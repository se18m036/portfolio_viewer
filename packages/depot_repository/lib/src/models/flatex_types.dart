import 'package:dart_mappable/dart_mappable.dart';

part 'flatex_types.mapper.dart';

mixin Response {
  late final Error error;

  bool isError() {
    return error.code != ErrorCode.CODE_OK;
  }
}

@MappableClass()
class LogoffResponse with Response, LogoffResponseMappable {
  LogoffResponse(Error error) {
    this.error = error;
  }
}

@MappableClass()
class SessionResponse with Response, SessionResponseMappable {
  final String sessionId;

  SessionResponse(Error error, this.sessionId) {
    this.error = error;
  }
}

/* --------------- */
/* --- Account --- */
/* --------------- */

@MappableClass()
class AccountResponse with Response, AccountResponseMappable {
  final List<AccountInfo> accountInfos;

  AccountResponse(Error error, this.accountInfos) {
    this.error = error;
  }
}

@MappableClass()
class Account extends AccountMeta with AccountMappable {
  final String name;
  final String currency;
  final String? iban;

  Account(super.bank, this.name, super.number, this.currency, this.iban);
}

@MappableClass()
class AccountInfo extends Account with AccountInfoMappable {
  final AccountType accountType;
  final List<AccountMeta> compliantAccounts;

  AccountInfo(super.bank, super.name, super.number, super.currency, super.iban,
      this.accountType, this.compliantAccounts);
}

@MappableClass()
class Bank with BankMappable {
  String bankName;
  String bic;
  String blz;

  // String countryCode;

  Bank(this.bankName, this.bic, this.blz);
}

@MappableClass()
class Error with ErrorMappable {
  final ErrorCode code;
  final String text;

  Error(this.code, this.text);
}

/* ----------------- */
/* --- Portfolio --- */
/* ----------------- */

@MappableClass()
class PortfolioResponse with Response, PortfolioResponseMappable {
  final Depot depot;
  final Value depotLendingValue;
  final Value depotValue;
  final Value depotValuePrevDay;
  final List<Security> securities;

  PortfolioResponse(Error error, this.depot, this.depotLendingValue,
      this.depotValue, this.depotValuePrevDay, this.securities) {
    this.error = error;
  }
}

@MappableClass()
class Depot with DepotMappable {
  final String number;

  Depot(this.number);
}

@MappableClass()
class Paper with PaperMappable {
  final String currency;
  final String isin;
  final String kind;
  final String name;
  final String sin;
  final String symbol;
  final int? unit;

  Paper({
    required this.currency,
    required this.isin,
    required this.kind,
    required this.name,
    required this.sin,
    required this.symbol,
    required this.unit,
  });
}

@MappableClass()
class PurchasePerfData with PurchasePerfDataMappable {
  final String? ratingFxPrice;
  final Value? ratingPrice;
  final Value value;

  PurchasePerfData(this.ratingFxPrice, this.ratingPrice, this.value);
}

@MappableClass()
class Quantity with QuantityMappable {
  final String? currency;
  final String? value;

  Quantity({required this.currency, required this.value});
}

@MappableClass()
class Security with SecurityMappable {
  final Depot depot;
  final Value? lendingValue;
  final String? lendingWeight;
  final Paper paper;
  final PurchasePerfData purchasePerfData;
  final Quantity? quantity;
  final Quantity? quantityAvailable;
  final String? riskClass;
  final int? storageLocation;
  final String? storageLocationDescription;

  Security(
      this.depot,
      this.lendingValue,
      this.lendingWeight,
      this.paper,
      this.purchasePerfData,
      this.quantity,
      this.quantityAvailable,
      this.riskClass,
      this.storageLocation,
      this.storageLocationDescription);
}

@MappableClass()
class Value with ValueMappable {
  String currency;
  String value;

  Value(this.currency, this.value);
}

/* --------------- */
/* --- Balance --- */
/* --------------- */

@MappableClass()
class BalanceResponse with Response, BalanceResponseMappable {
  BalanceInfo balanceInfo;

  BalanceResponse(Error error, this.balanceInfo) {
    this.error = error;
  }
}

@MappableClass()
class AccountMeta with AccountMetaMappable {
  final Bank bank;
  final String number;

  AccountMeta(this.bank, this.number);
}

@MappableClass()
class BalanceBooked with BalanceBookedMappable {
  final Value amount;
  final DateTime datetime;

  BalanceBooked({required this.amount, required this.datetime});
}

@MappableClass()
class BalanceInfo with BalanceInfoMappable {
  final AccountMeta account;
  final BalanceBooked balanceBooked;
  final Value creditLine;
  final Value maxBuyingPowerMoneyTransfer;
  final Value maxBuyingPowerOrder;

  BalanceInfo({
    required this.account,
    required this.balanceBooked,
    required this.creditLine,
    required this.maxBuyingPowerMoneyTransfer,
    required this.maxBuyingPowerOrder,
  });
}

/* ------------- */
/* --- Enums --- */
/* ------------- */

@MappableEnum()
enum ErrorCode {
  // @formatter:off
  @MappableValue("0") CODE_OK,
  @MappableValue("1") CODE_ERROR,
  @MappableValue("10") CODE_SESSION_INVALID,
  @MappableValue("107") CODE_LENGTH_INVALID,
  @MappableValue("291") CODE_IDENTIFICATION_INVALID,
  @MappableValue("304") CODE_IDENT_REQUEST_INVALID,
  @MappableValue("348") CODE_PIN_INVALID,
  @MappableValue("403") CODE_CONFIRM_AUTH_USE_CASE_REQUEST_INVALID,
  @MappableValue("465") CODE_AUTH_USE_CASE_ID_INVALID,
  @MappableValue("PTS_100") CODE_IDENTIFICATION_CHALLENGE_EXPIRED,
  // @formatter:on
}

@MappableEnum()
enum AccountType {
  // @formatter:off
  @MappableValue("CSH") CASH,
  @MappableValue("DEP") DEPOT
  // @formatter:on
}
