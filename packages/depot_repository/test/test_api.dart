import '../lib/src/models/flatex_types.dart';
import '../lib/src/flatex_api.dart';

main() async {
  const userId = String.fromEnvironment('USERID');
  const password = String.fromEnvironment('PASSWORD');
  print("Fetching session...");
  final depotRepository = DepotRepository();
  final session = await depotRepository.login(userId, password);

  if (session.isError()) {
    print("Error: ${session.error.code}");
    return;
  }

  print("Session: ${session.sessionId}");

  final account = await depotRepository.getAccount(userId, session.sessionId);

  if (account.isError()) {
    print("Error: ${account.error.code}");
    return;
  }

  await Future.forEach<AccountInfo>(account.accountInfos, (info) async {
    var summary = "${info.accountType}: ${info.number}";

    if (info.accountType == AccountType.CASH) {
      final balance =
          await depotRepository.getBalance(userId, session.sessionId, info);

      if (balance.isError()) {
        print("Error: ${balance.error.code}");
        return;
      }
      print(summary);
      print(
          "${balance.balanceInfo.account.number}: ${balance.balanceInfo.balanceBooked.amount}");
    }

    if (info.accountType == AccountType.DEPOT) {
      final portfolio =
          await depotRepository.getPortfolio(userId, session.sessionId, info);

      if (portfolio.isError()) {
        print("Error: ${portfolio.error.code}");
        return;
      }
      print(summary);
      print(
          "${portfolio.depot.number}: ${portfolio.depotValue.value} ${portfolio.depotValue.currency}");
      final securities = portfolio.securities.map((s) =>
          "\t${s.paper.symbol} - ${s.purchasePerfData.value.value} ${s.purchasePerfData.value.currency}");
      securities.forEach((element) => print(element));
    }
  });

  await depotRepository.logoff(userId, session.sessionId);
}
