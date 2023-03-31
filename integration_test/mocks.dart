import 'package:depot_repository/depot_repository.dart' hide Response;
import 'package:mocktail/mocktail.dart';
import 'package:dio/dio.dart';

class MockDepotRepository extends Mock implements DepotRepository {}

final OK = Error(ErrorCode.CODE_OK, 'OK');

final accountInfoDepotFixture = AccountInfo(
    Bank('BANK AG', 'BICCODE', '10000'),
    'John Doe',
    '1',
    'EUR',
    'AT000000000000000000',
    AccountType.DEPOT,
    [AccountMeta(Bank('BANK AG', 'BICCODE', '10000'), '2')]);

final accountInfoCashfixture = AccountInfo(Bank('BANK AG', 'BICCODE', '10000'),
    'John Doe', '2', 'EUR', 'AT000000000000000000', AccountType.CASH, []);

final balanceInfo = BalanceInfo(
  account: AccountMeta(Bank('BANK AG', 'BICCODE', '10000'), '2'),
  balanceBooked: BalanceBooked(
    amount: value(10.0),
    datetime: DateTime.parse('2023-03-03T01:08:20.833Z'),
  ),
  creditLine: value(6019.24),
  maxBuyingPowerMoneyTransfer: value(6019.24),
  maxBuyingPowerOrder: value(6019.24),
);

PortfolioResponse portfolioResponse() {
  final depot = Depot('1');
  return PortfolioResponse(
    OK,
    depot,
    value(6019.24),
    value(12319.13),
    value(0),
    [
      Security(
          depot,
          value(600),
          '60.00',
          Paper(
            currency: 'EUR',
            isin: 'US5949181045',
            kind: 'AKT',
            name: 'Microsoft Corp.',
            sin: '870747',
            symbol: 'MSFT',
            unit: 1,
          ),
          PurchasePerfData('1.0', value(277.65), value(1388.25)),
          Quantity(currency: 'EUR', value: '5'),
          Quantity(currency: 'EUR', value: '5'),
          'E',
          1,
          'Clearstream Nat.'),
      Security(
          depot,
          value(600),
          '60.00',
          Paper(
            currency: 'EUR',
            isin: 'DE0007164600',
            kind: 'AKT',
            name: 'SAP SE O.N.',
            sin: '716460',
            symbol: 'SAP',
            unit: 1,
          ),
          PurchasePerfData('1.0', value(122.02), value(1220.20)),
          Quantity(currency: 'EUR', value: '10'),
          Quantity(currency: 'EUR', value: '10'),
          'E',
          1,
          'Clearstream Nat.')
    ],
  );
}

Value value(num number) {
  return Value('EUR', number.toStringAsFixed(2));
}

final dioLoginError = DioError(
  error: {'message': 'Some beautiful error!'},
  requestOptions: RequestOptions(path: '/login'),
  response:
      Response(requestOptions: RequestOptions(path: '/login'), statusCode: 401),
  type: DioErrorType.badResponse,
);
