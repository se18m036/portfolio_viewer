// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'flatex_types.dart';

class LogoffResponseMapper extends MapperBase<LogoffResponse> {
  static MapperContainer container = MapperContainer(
    mappers: {LogoffResponseMapper()},
  )..linkAll({ErrorMapper.container});

  @override
  LogoffResponseMapperElement createElement(MapperContainer container) {
    return LogoffResponseMapperElement._(this, container);
  }

  @override
  String get id => 'LogoffResponse';

  static final fromMap = container.fromMap<LogoffResponse>;
  static final fromJson = container.fromJson<LogoffResponse>;
}

class LogoffResponseMapperElement extends MapperElementBase<LogoffResponse> {
  LogoffResponseMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  LogoffResponse decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  LogoffResponse fromMap(Map<String, dynamic> map) =>
      LogoffResponse(container.$get(map, 'error'));

  @override
  Function get encoder => encode;
  dynamic encode(LogoffResponse v) => toMap(v);
  Map<String, dynamic> toMap(LogoffResponse l) =>
      {'error': container.$enc(l.error, 'error')};

  @override
  String stringify(LogoffResponse self) => 'LogoffResponse()';
  @override
  int hash(LogoffResponse self) => 0;
  @override
  bool equals(LogoffResponse self, LogoffResponse other) => true;
}

mixin LogoffResponseMappable {
  String toJson() =>
      LogoffResponseMapper.container.toJson(this as LogoffResponse);
  Map<String, dynamic> toMap() =>
      LogoffResponseMapper.container.toMap(this as LogoffResponse);
  LogoffResponseCopyWith<LogoffResponse, LogoffResponse, LogoffResponse>
      get copyWith => _LogoffResponseCopyWithImpl(
          this as LogoffResponse, $identity, $identity);
  @override
  String toString() => LogoffResponseMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          LogoffResponseMapper.container.isEqual(this, other));
  @override
  int get hashCode => LogoffResponseMapper.container.hash(this);
}

extension LogoffResponseValueCopy<$R, $Out extends LogoffResponse>
    on ObjectCopyWith<$R, LogoffResponse, $Out> {
  LogoffResponseCopyWith<$R, LogoffResponse, $Out> get asLogoffResponse =>
      base.as((v, t, t2) => _LogoffResponseCopyWithImpl(v, t, t2));
}

typedef LogoffResponseCopyWithBound = LogoffResponse;

abstract class LogoffResponseCopyWith<$R, $In extends LogoffResponse,
    $Out extends LogoffResponse> implements ObjectCopyWith<$R, $In, $Out> {
  LogoffResponseCopyWith<$R2, $In, $Out2>
      chain<$R2, $Out2 extends LogoffResponse>(
          Then<LogoffResponse, $Out2> t, Then<$Out2, $R2> t2);
  ErrorCopyWith<$R, Error, Error> get error;
  $R call({Error? error});
}

class _LogoffResponseCopyWithImpl<$R, $Out extends LogoffResponse>
    extends CopyWithBase<$R, LogoffResponse, $Out>
    implements LogoffResponseCopyWith<$R, LogoffResponse, $Out> {
  _LogoffResponseCopyWithImpl(super.value, super.then, super.then2);
  @override
  LogoffResponseCopyWith<$R2, LogoffResponse, $Out2>
      chain<$R2, $Out2 extends LogoffResponse>(
              Then<LogoffResponse, $Out2> t, Then<$Out2, $R2> t2) =>
          _LogoffResponseCopyWithImpl($value, t, t2);

  @override
  ErrorCopyWith<$R, Error, Error> get error =>
      $value.error.copyWith.chain($identity, (v) => call(error: v));
  @override
  $R call({Error? error}) => $then(LogoffResponse(error ?? $value.error));
}

class SessionResponseMapper extends MapperBase<SessionResponse> {
  static MapperContainer container = MapperContainer(
    mappers: {SessionResponseMapper()},
  )..linkAll({ErrorMapper.container});

  @override
  SessionResponseMapperElement createElement(MapperContainer container) {
    return SessionResponseMapperElement._(this, container);
  }

  @override
  String get id => 'SessionResponse';

  static final fromMap = container.fromMap<SessionResponse>;
  static final fromJson = container.fromJson<SessionResponse>;
}

class SessionResponseMapperElement extends MapperElementBase<SessionResponse> {
  SessionResponseMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  SessionResponse decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  SessionResponse fromMap(Map<String, dynamic> map) => SessionResponse(
      container.$get(map, 'error'), container.$get(map, 'sessionId'));

  @override
  Function get encoder => encode;
  dynamic encode(SessionResponse v) => toMap(v);
  Map<String, dynamic> toMap(SessionResponse s) => {
        'error': container.$enc(s.error, 'error'),
        'sessionId': container.$enc(s.sessionId, 'sessionId')
      };

  @override
  String stringify(SessionResponse self) =>
      'SessionResponse(sessionId: ${container.asString(self.sessionId)})';
  @override
  int hash(SessionResponse self) => container.hash(self.sessionId);
  @override
  bool equals(SessionResponse self, SessionResponse other) =>
      container.isEqual(self.sessionId, other.sessionId);
}

mixin SessionResponseMappable {
  String toJson() =>
      SessionResponseMapper.container.toJson(this as SessionResponse);
  Map<String, dynamic> toMap() =>
      SessionResponseMapper.container.toMap(this as SessionResponse);
  SessionResponseCopyWith<SessionResponse, SessionResponse, SessionResponse>
      get copyWith => _SessionResponseCopyWithImpl(
          this as SessionResponse, $identity, $identity);
  @override
  String toString() => SessionResponseMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          SessionResponseMapper.container.isEqual(this, other));
  @override
  int get hashCode => SessionResponseMapper.container.hash(this);
}

extension SessionResponseValueCopy<$R, $Out extends SessionResponse>
    on ObjectCopyWith<$R, SessionResponse, $Out> {
  SessionResponseCopyWith<$R, SessionResponse, $Out> get asSessionResponse =>
      base.as((v, t, t2) => _SessionResponseCopyWithImpl(v, t, t2));
}

typedef SessionResponseCopyWithBound = SessionResponse;

abstract class SessionResponseCopyWith<$R, $In extends SessionResponse,
    $Out extends SessionResponse> implements ObjectCopyWith<$R, $In, $Out> {
  SessionResponseCopyWith<$R2, $In, $Out2>
      chain<$R2, $Out2 extends SessionResponse>(
          Then<SessionResponse, $Out2> t, Then<$Out2, $R2> t2);
  ErrorCopyWith<$R, Error, Error> get error;
  $R call({Error? error, String? sessionId});
}

class _SessionResponseCopyWithImpl<$R, $Out extends SessionResponse>
    extends CopyWithBase<$R, SessionResponse, $Out>
    implements SessionResponseCopyWith<$R, SessionResponse, $Out> {
  _SessionResponseCopyWithImpl(super.value, super.then, super.then2);
  @override
  SessionResponseCopyWith<$R2, SessionResponse, $Out2>
      chain<$R2, $Out2 extends SessionResponse>(
              Then<SessionResponse, $Out2> t, Then<$Out2, $R2> t2) =>
          _SessionResponseCopyWithImpl($value, t, t2);

  @override
  ErrorCopyWith<$R, Error, Error> get error =>
      $value.error.copyWith.chain($identity, (v) => call(error: v));
  @override
  $R call({Error? error, String? sessionId}) => $then(
      SessionResponse(error ?? $value.error, sessionId ?? $value.sessionId));
}

class AccountResponseMapper extends MapperBase<AccountResponse> {
  static MapperContainer container = MapperContainer(
    mappers: {AccountResponseMapper()},
  )..linkAll({ErrorMapper.container, AccountInfoMapper.container});

  @override
  AccountResponseMapperElement createElement(MapperContainer container) {
    return AccountResponseMapperElement._(this, container);
  }

  @override
  String get id => 'AccountResponse';

  static final fromMap = container.fromMap<AccountResponse>;
  static final fromJson = container.fromJson<AccountResponse>;
}

class AccountResponseMapperElement extends MapperElementBase<AccountResponse> {
  AccountResponseMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  AccountResponse decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  AccountResponse fromMap(Map<String, dynamic> map) => AccountResponse(
      container.$get(map, 'error'), container.$get(map, 'accountInfos'));

  @override
  Function get encoder => encode;
  dynamic encode(AccountResponse v) => toMap(v);
  Map<String, dynamic> toMap(AccountResponse a) => {
        'error': container.$enc(a.error, 'error'),
        'accountInfos': container.$enc(a.accountInfos, 'accountInfos')
      };

  @override
  String stringify(AccountResponse self) =>
      'AccountResponse(accountInfos: ${container.asString(self.accountInfos)})';
  @override
  int hash(AccountResponse self) => container.hash(self.accountInfos);
  @override
  bool equals(AccountResponse self, AccountResponse other) =>
      container.isEqual(self.accountInfos, other.accountInfos);
}

mixin AccountResponseMappable {
  String toJson() =>
      AccountResponseMapper.container.toJson(this as AccountResponse);
  Map<String, dynamic> toMap() =>
      AccountResponseMapper.container.toMap(this as AccountResponse);
  AccountResponseCopyWith<AccountResponse, AccountResponse, AccountResponse>
      get copyWith => _AccountResponseCopyWithImpl(
          this as AccountResponse, $identity, $identity);
  @override
  String toString() => AccountResponseMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          AccountResponseMapper.container.isEqual(this, other));
  @override
  int get hashCode => AccountResponseMapper.container.hash(this);
}

extension AccountResponseValueCopy<$R, $Out extends AccountResponse>
    on ObjectCopyWith<$R, AccountResponse, $Out> {
  AccountResponseCopyWith<$R, AccountResponse, $Out> get asAccountResponse =>
      base.as((v, t, t2) => _AccountResponseCopyWithImpl(v, t, t2));
}

typedef AccountResponseCopyWithBound = AccountResponse;

abstract class AccountResponseCopyWith<$R, $In extends AccountResponse,
    $Out extends AccountResponse> implements ObjectCopyWith<$R, $In, $Out> {
  AccountResponseCopyWith<$R2, $In, $Out2>
      chain<$R2, $Out2 extends AccountResponse>(
          Then<AccountResponse, $Out2> t, Then<$Out2, $R2> t2);
  ErrorCopyWith<$R, Error, Error> get error;
  ListCopyWith<$R, AccountInfo,
      AccountInfoCopyWith<$R, AccountInfo, AccountInfo>> get accountInfos;
  $R call({Error? error, List<AccountInfo>? accountInfos});
}

class _AccountResponseCopyWithImpl<$R, $Out extends AccountResponse>
    extends CopyWithBase<$R, AccountResponse, $Out>
    implements AccountResponseCopyWith<$R, AccountResponse, $Out> {
  _AccountResponseCopyWithImpl(super.value, super.then, super.then2);
  @override
  AccountResponseCopyWith<$R2, AccountResponse, $Out2>
      chain<$R2, $Out2 extends AccountResponse>(
              Then<AccountResponse, $Out2> t, Then<$Out2, $R2> t2) =>
          _AccountResponseCopyWithImpl($value, t, t2);

  @override
  ErrorCopyWith<$R, Error, Error> get error =>
      $value.error.copyWith.chain($identity, (v) => call(error: v));
  @override
  ListCopyWith<$R, AccountInfo,
          AccountInfoCopyWith<$R, AccountInfo, AccountInfo>>
      get accountInfos => ListCopyWith(
          $value.accountInfos,
          (v, t) => v.copyWith.chain<$R, AccountInfo>($identity, t),
          (v) => call(accountInfos: v));
  @override
  $R call({Error? error, List<AccountInfo>? accountInfos}) =>
      $then(AccountResponse(
          error ?? $value.error, accountInfos ?? $value.accountInfos));
}

class AccountMapper extends MapperBase<Account> {
  static MapperContainer? _c;
  static MapperContainer container = _c ??
      ((_c = MapperContainer(
        mappers: {AccountMapper()},
      ))
        ..linkAll({
          AccountMetaMapper.container,
          AccountInfoMapper.container,
          BankMapper.container,
        }));

  @override
  AccountMapperElement createElement(MapperContainer container) {
    return AccountMapperElement._(this, container);
  }

  @override
  String get id => 'Account';

  static final fromMap = container.fromMap<Account>;
  static final fromJson = container.fromJson<Account>;
}

class AccountMapperElement extends MapperElementBase<Account> {
  AccountMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  Account decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  Account fromMap(Map<String, dynamic> map) => Account(
      container.$get(map, 'bank'),
      container.$get(map, 'name'),
      container.$get(map, 'number'),
      container.$get(map, 'currency'),
      container.$getOpt(map, 'iban'));

  @override
  Function get encoder => encode;
  dynamic encode(Account v) => toMap(v);
  Map<String, dynamic> toMap(Account a) => {
        'bank': container.$enc(a.bank, 'bank'),
        'name': container.$enc(a.name, 'name'),
        'number': container.$enc(a.number, 'number'),
        'currency': container.$enc(a.currency, 'currency'),
        'iban': container.$enc(a.iban, 'iban')
      };

  @override
  String stringify(Account self) =>
      'Account(bank: ${container.asString(self.bank)}, number: ${container.asString(self.number)}, name: ${container.asString(self.name)}, currency: ${container.asString(self.currency)}, iban: ${container.asString(self.iban)})';
  @override
  int hash(Account self) =>
      container.hash(self.bank) ^
      container.hash(self.number) ^
      container.hash(self.name) ^
      container.hash(self.currency) ^
      container.hash(self.iban);
  @override
  bool equals(Account self, Account other) =>
      container.isEqual(self.bank, other.bank) &&
      container.isEqual(self.number, other.number) &&
      container.isEqual(self.name, other.name) &&
      container.isEqual(self.currency, other.currency) &&
      container.isEqual(self.iban, other.iban);
}

mixin AccountMappable {
  String toJson() => AccountMapper.container.toJson(this as Account);
  Map<String, dynamic> toMap() =>
      AccountMapper.container.toMap(this as Account);
  AccountCopyWith<Account, Account, Account> get copyWith =>
      _AccountCopyWithImpl(this as Account, $identity, $identity);
  @override
  String toString() => AccountMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          AccountMapper.container.isEqual(this, other));
  @override
  int get hashCode => AccountMapper.container.hash(this);
}

extension AccountValueCopy<$R, $Out extends AccountMeta>
    on ObjectCopyWith<$R, Account, $Out> {
  AccountCopyWith<$R, Account, $Out> get asAccount =>
      base.as((v, t, t2) => _AccountCopyWithImpl(v, t, t2));
}

typedef AccountCopyWithBound = AccountMeta;

abstract class AccountCopyWith<$R, $In extends Account,
    $Out extends AccountMeta> implements AccountMetaCopyWith<$R, $In, $Out> {
  AccountCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends AccountMeta>(
      Then<Account, $Out2> t, Then<$Out2, $R2> t2);
  @override
  BankCopyWith<$R, Bank, Bank> get bank;
  @override
  $R call(
      {Bank? bank,
      String? name,
      String? number,
      String? currency,
      String? iban});
}

class _AccountCopyWithImpl<$R, $Out extends AccountMeta>
    extends CopyWithBase<$R, Account, $Out>
    implements AccountCopyWith<$R, Account, $Out> {
  _AccountCopyWithImpl(super.value, super.then, super.then2);
  @override
  AccountCopyWith<$R2, Account, $Out2> chain<$R2, $Out2 extends AccountMeta>(
          Then<Account, $Out2> t, Then<$Out2, $R2> t2) =>
      _AccountCopyWithImpl($value, t, t2);

  @override
  BankCopyWith<$R, Bank, Bank> get bank =>
      $value.bank.copyWith.chain($identity, (v) => call(bank: v));
  @override
  $R call(
          {Bank? bank,
          String? name,
          String? number,
          String? currency,
          Object? iban = $none}) =>
      $then(Account(
          bank ?? $value.bank,
          name ?? $value.name,
          number ?? $value.number,
          currency ?? $value.currency,
          or(iban, $value.iban)));
}

class AccountInfoMapper extends MapperBase<AccountInfo> {
  static MapperContainer? _c;
  static MapperContainer container = _c ??
      ((_c = MapperContainer(
        mappers: {AccountInfoMapper()},
      ))
        ..linkAll({
          AccountMapper.container,
          BankMapper.container,
          AccountTypeMapper.container,
          AccountMetaMapper.container,
        }));

  @override
  AccountInfoMapperElement createElement(MapperContainer container) {
    return AccountInfoMapperElement._(this, container);
  }

  @override
  String get id => 'AccountInfo';

  static final fromMap = container.fromMap<AccountInfo>;
  static final fromJson = container.fromJson<AccountInfo>;
}

class AccountInfoMapperElement extends MapperElementBase<AccountInfo> {
  AccountInfoMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  AccountInfo decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  AccountInfo fromMap(Map<String, dynamic> map) => AccountInfo(
      container.$get(map, 'bank'),
      container.$get(map, 'name'),
      container.$get(map, 'number'),
      container.$get(map, 'currency'),
      container.$getOpt(map, 'iban'),
      container.$get(map, 'accountType'),
      container.$get(map, 'compliantAccounts'));

  @override
  Function get encoder => encode;
  dynamic encode(AccountInfo v) => toMap(v);
  Map<String, dynamic> toMap(AccountInfo a) => {
        'bank': container.$enc(a.bank, 'bank'),
        'name': container.$enc(a.name, 'name'),
        'number': container.$enc(a.number, 'number'),
        'currency': container.$enc(a.currency, 'currency'),
        'iban': container.$enc(a.iban, 'iban'),
        'accountType': container.$enc(a.accountType, 'accountType'),
        'compliantAccounts':
            container.$enc(a.compliantAccounts, 'compliantAccounts')
      };

  @override
  String stringify(AccountInfo self) =>
      'AccountInfo(bank: ${container.asString(self.bank)}, number: ${container.asString(self.number)}, name: ${container.asString(self.name)}, currency: ${container.asString(self.currency)}, iban: ${container.asString(self.iban)}, accountType: ${container.asString(self.accountType)}, compliantAccounts: ${container.asString(self.compliantAccounts)})';
  @override
  int hash(AccountInfo self) =>
      container.hash(self.bank) ^
      container.hash(self.number) ^
      container.hash(self.name) ^
      container.hash(self.currency) ^
      container.hash(self.iban) ^
      container.hash(self.accountType) ^
      container.hash(self.compliantAccounts);
  @override
  bool equals(AccountInfo self, AccountInfo other) =>
      container.isEqual(self.bank, other.bank) &&
      container.isEqual(self.number, other.number) &&
      container.isEqual(self.name, other.name) &&
      container.isEqual(self.currency, other.currency) &&
      container.isEqual(self.iban, other.iban) &&
      container.isEqual(self.accountType, other.accountType) &&
      container.isEqual(self.compliantAccounts, other.compliantAccounts);
}

mixin AccountInfoMappable {
  String toJson() => AccountInfoMapper.container.toJson(this as AccountInfo);
  Map<String, dynamic> toMap() =>
      AccountInfoMapper.container.toMap(this as AccountInfo);
  AccountInfoCopyWith<AccountInfo, AccountInfo, AccountInfo> get copyWith =>
      _AccountInfoCopyWithImpl(this as AccountInfo, $identity, $identity);
  @override
  String toString() => AccountInfoMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          AccountInfoMapper.container.isEqual(this, other));
  @override
  int get hashCode => AccountInfoMapper.container.hash(this);
}

extension AccountInfoValueCopy<$R, $Out extends AccountMeta>
    on ObjectCopyWith<$R, AccountInfo, $Out> {
  AccountInfoCopyWith<$R, AccountInfo, $Out> get asAccountInfo =>
      base.as((v, t, t2) => _AccountInfoCopyWithImpl(v, t, t2));
}

typedef AccountInfoCopyWithBound = AccountMeta;

abstract class AccountInfoCopyWith<$R, $In extends AccountInfo,
    $Out extends AccountMeta> implements AccountCopyWith<$R, $In, $Out> {
  AccountInfoCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends AccountMeta>(
      Then<AccountInfo, $Out2> t, Then<$Out2, $R2> t2);
  @override
  BankCopyWith<$R, Bank, Bank> get bank;
  ListCopyWith<$R, AccountMeta,
      AccountMetaCopyWith<$R, AccountMeta, AccountMeta>> get compliantAccounts;
  @override
  $R call(
      {Bank? bank,
      String? name,
      String? number,
      String? currency,
      String? iban,
      AccountType? accountType,
      List<AccountMeta>? compliantAccounts});
}

class _AccountInfoCopyWithImpl<$R, $Out extends AccountMeta>
    extends CopyWithBase<$R, AccountInfo, $Out>
    implements AccountInfoCopyWith<$R, AccountInfo, $Out> {
  _AccountInfoCopyWithImpl(super.value, super.then, super.then2);
  @override
  AccountInfoCopyWith<$R2, AccountInfo, $Out2>
      chain<$R2, $Out2 extends AccountMeta>(
              Then<AccountInfo, $Out2> t, Then<$Out2, $R2> t2) =>
          _AccountInfoCopyWithImpl($value, t, t2);

  @override
  BankCopyWith<$R, Bank, Bank> get bank =>
      $value.bank.copyWith.chain($identity, (v) => call(bank: v));
  @override
  ListCopyWith<$R, AccountMeta,
          AccountMetaCopyWith<$R, AccountMeta, AccountMeta>>
      get compliantAccounts => ListCopyWith(
          $value.compliantAccounts,
          (v, t) => v.copyWith.chain<$R, AccountMeta>($identity, t),
          (v) => call(compliantAccounts: v));
  @override
  $R call(
          {Bank? bank,
          String? name,
          String? number,
          String? currency,
          Object? iban = $none,
          AccountType? accountType,
          List<AccountMeta>? compliantAccounts}) =>
      $then(AccountInfo(
          bank ?? $value.bank,
          name ?? $value.name,
          number ?? $value.number,
          currency ?? $value.currency,
          or(iban, $value.iban),
          accountType ?? $value.accountType,
          compliantAccounts ?? $value.compliantAccounts));
}

class BankMapper extends MapperBase<Bank> {
  static MapperContainer container = MapperContainer(
    mappers: {BankMapper()},
  );

  @override
  BankMapperElement createElement(MapperContainer container) {
    return BankMapperElement._(this, container);
  }

  @override
  String get id => 'Bank';

  static final fromMap = container.fromMap<Bank>;
  static final fromJson = container.fromJson<Bank>;
}

class BankMapperElement extends MapperElementBase<Bank> {
  BankMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  Bank decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  Bank fromMap(Map<String, dynamic> map) => Bank(
      container.$get(map, 'bankName'),
      container.$get(map, 'bic'),
      container.$get(map, 'blz'));

  @override
  Function get encoder => encode;
  dynamic encode(Bank v) => toMap(v);
  Map<String, dynamic> toMap(Bank b) => {
        'bankName': container.$enc(b.bankName, 'bankName'),
        'bic': container.$enc(b.bic, 'bic'),
        'blz': container.$enc(b.blz, 'blz')
      };

  @override
  String stringify(Bank self) =>
      'Bank(bankName: ${container.asString(self.bankName)}, bic: ${container.asString(self.bic)}, blz: ${container.asString(self.blz)})';
  @override
  int hash(Bank self) =>
      container.hash(self.bankName) ^
      container.hash(self.bic) ^
      container.hash(self.blz);
  @override
  bool equals(Bank self, Bank other) =>
      container.isEqual(self.bankName, other.bankName) &&
      container.isEqual(self.bic, other.bic) &&
      container.isEqual(self.blz, other.blz);
}

mixin BankMappable {
  String toJson() => BankMapper.container.toJson(this as Bank);
  Map<String, dynamic> toMap() => BankMapper.container.toMap(this as Bank);
  BankCopyWith<Bank, Bank, Bank> get copyWith =>
      _BankCopyWithImpl(this as Bank, $identity, $identity);
  @override
  String toString() => BankMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          BankMapper.container.isEqual(this, other));
  @override
  int get hashCode => BankMapper.container.hash(this);
}

extension BankValueCopy<$R, $Out extends Bank>
    on ObjectCopyWith<$R, Bank, $Out> {
  BankCopyWith<$R, Bank, $Out> get asBank =>
      base.as((v, t, t2) => _BankCopyWithImpl(v, t, t2));
}

typedef BankCopyWithBound = Bank;

abstract class BankCopyWith<$R, $In extends Bank, $Out extends Bank>
    implements ObjectCopyWith<$R, $In, $Out> {
  BankCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends Bank>(
      Then<Bank, $Out2> t, Then<$Out2, $R2> t2);
  $R call({String? bankName, String? bic, String? blz});
}

class _BankCopyWithImpl<$R, $Out extends Bank>
    extends CopyWithBase<$R, Bank, $Out>
    implements BankCopyWith<$R, Bank, $Out> {
  _BankCopyWithImpl(super.value, super.then, super.then2);
  @override
  BankCopyWith<$R2, Bank, $Out2> chain<$R2, $Out2 extends Bank>(
          Then<Bank, $Out2> t, Then<$Out2, $R2> t2) =>
      _BankCopyWithImpl($value, t, t2);

  @override
  $R call({String? bankName, String? bic, String? blz}) => $then(
      Bank(bankName ?? $value.bankName, bic ?? $value.bic, blz ?? $value.blz));
}

class ErrorMapper extends MapperBase<Error> {
  static MapperContainer container = MapperContainer(
    mappers: {ErrorMapper()},
  )..linkAll({ErrorCodeMapper.container});

  @override
  ErrorMapperElement createElement(MapperContainer container) {
    return ErrorMapperElement._(this, container);
  }

  @override
  String get id => 'Error';

  static final fromMap = container.fromMap<Error>;
  static final fromJson = container.fromJson<Error>;
}

class ErrorMapperElement extends MapperElementBase<Error> {
  ErrorMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  Error decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  Error fromMap(Map<String, dynamic> map) =>
      Error(container.$get(map, 'code'), container.$get(map, 'text'));

  @override
  Function get encoder => encode;
  dynamic encode(Error v) => toMap(v);
  Map<String, dynamic> toMap(Error e) => {
        'code': container.$enc(e.code, 'code'),
        'text': container.$enc(e.text, 'text')
      };

  @override
  String stringify(Error self) =>
      'Error(code: ${container.asString(self.code)}, text: ${container.asString(self.text)})';
  @override
  int hash(Error self) => container.hash(self.code) ^ container.hash(self.text);
  @override
  bool equals(Error self, Error other) =>
      container.isEqual(self.code, other.code) &&
      container.isEqual(self.text, other.text);
}

mixin ErrorMappable {
  String toJson() => ErrorMapper.container.toJson(this as Error);
  Map<String, dynamic> toMap() => ErrorMapper.container.toMap(this as Error);
  ErrorCopyWith<Error, Error, Error> get copyWith =>
      _ErrorCopyWithImpl(this as Error, $identity, $identity);
  @override
  String toString() => ErrorMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          ErrorMapper.container.isEqual(this, other));
  @override
  int get hashCode => ErrorMapper.container.hash(this);
}

extension ErrorValueCopy<$R, $Out extends Error>
    on ObjectCopyWith<$R, Error, $Out> {
  ErrorCopyWith<$R, Error, $Out> get asError =>
      base.as((v, t, t2) => _ErrorCopyWithImpl(v, t, t2));
}

typedef ErrorCopyWithBound = Error;

abstract class ErrorCopyWith<$R, $In extends Error, $Out extends Error>
    implements ObjectCopyWith<$R, $In, $Out> {
  ErrorCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends Error>(
      Then<Error, $Out2> t, Then<$Out2, $R2> t2);
  $R call({ErrorCode? code, String? text});
}

class _ErrorCopyWithImpl<$R, $Out extends Error>
    extends CopyWithBase<$R, Error, $Out>
    implements ErrorCopyWith<$R, Error, $Out> {
  _ErrorCopyWithImpl(super.value, super.then, super.then2);
  @override
  ErrorCopyWith<$R2, Error, $Out2> chain<$R2, $Out2 extends Error>(
          Then<Error, $Out2> t, Then<$Out2, $R2> t2) =>
      _ErrorCopyWithImpl($value, t, t2);

  @override
  $R call({ErrorCode? code, String? text}) =>
      $then(Error(code ?? $value.code, text ?? $value.text));
}

class PortfolioResponseMapper extends MapperBase<PortfolioResponse> {
  static MapperContainer container = MapperContainer(
    mappers: {PortfolioResponseMapper()},
  )..linkAll({
      ErrorMapper.container,
      DepotMapper.container,
      ValueMapper.container,
      SecurityMapper.container,
    });

  @override
  PortfolioResponseMapperElement createElement(MapperContainer container) {
    return PortfolioResponseMapperElement._(this, container);
  }

  @override
  String get id => 'PortfolioResponse';

  static final fromMap = container.fromMap<PortfolioResponse>;
  static final fromJson = container.fromJson<PortfolioResponse>;
}

class PortfolioResponseMapperElement
    extends MapperElementBase<PortfolioResponse> {
  PortfolioResponseMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  PortfolioResponse decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  PortfolioResponse fromMap(Map<String, dynamic> map) => PortfolioResponse(
      container.$get(map, 'error'),
      container.$get(map, 'depot'),
      container.$get(map, 'depotLendingValue'),
      container.$get(map, 'depotValue'),
      container.$get(map, 'depotValuePrevDay'),
      container.$get(map, 'securities'));

  @override
  Function get encoder => encode;
  dynamic encode(PortfolioResponse v) => toMap(v);
  Map<String, dynamic> toMap(PortfolioResponse p) => {
        'error': container.$enc(p.error, 'error'),
        'depot': container.$enc(p.depot, 'depot'),
        'depotLendingValue':
            container.$enc(p.depotLendingValue, 'depotLendingValue'),
        'depotValue': container.$enc(p.depotValue, 'depotValue'),
        'depotValuePrevDay':
            container.$enc(p.depotValuePrevDay, 'depotValuePrevDay'),
        'securities': container.$enc(p.securities, 'securities')
      };

  @override
  String stringify(PortfolioResponse self) =>
      'PortfolioResponse(depot: ${container.asString(self.depot)}, depotLendingValue: ${container.asString(self.depotLendingValue)}, depotValue: ${container.asString(self.depotValue)}, depotValuePrevDay: ${container.asString(self.depotValuePrevDay)}, securities: ${container.asString(self.securities)})';
  @override
  int hash(PortfolioResponse self) =>
      container.hash(self.depot) ^
      container.hash(self.depotLendingValue) ^
      container.hash(self.depotValue) ^
      container.hash(self.depotValuePrevDay) ^
      container.hash(self.securities);
  @override
  bool equals(PortfolioResponse self, PortfolioResponse other) =>
      container.isEqual(self.depot, other.depot) &&
      container.isEqual(self.depotLendingValue, other.depotLendingValue) &&
      container.isEqual(self.depotValue, other.depotValue) &&
      container.isEqual(self.depotValuePrevDay, other.depotValuePrevDay) &&
      container.isEqual(self.securities, other.securities);
}

mixin PortfolioResponseMappable {
  String toJson() =>
      PortfolioResponseMapper.container.toJson(this as PortfolioResponse);
  Map<String, dynamic> toMap() =>
      PortfolioResponseMapper.container.toMap(this as PortfolioResponse);
  PortfolioResponseCopyWith<PortfolioResponse, PortfolioResponse,
          PortfolioResponse>
      get copyWith => _PortfolioResponseCopyWithImpl(
          this as PortfolioResponse, $identity, $identity);
  @override
  String toString() => PortfolioResponseMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          PortfolioResponseMapper.container.isEqual(this, other));
  @override
  int get hashCode => PortfolioResponseMapper.container.hash(this);
}

extension PortfolioResponseValueCopy<$R, $Out extends PortfolioResponse>
    on ObjectCopyWith<$R, PortfolioResponse, $Out> {
  PortfolioResponseCopyWith<$R, PortfolioResponse, $Out>
      get asPortfolioResponse =>
          base.as((v, t, t2) => _PortfolioResponseCopyWithImpl(v, t, t2));
}

typedef PortfolioResponseCopyWithBound = PortfolioResponse;

abstract class PortfolioResponseCopyWith<$R, $In extends PortfolioResponse,
    $Out extends PortfolioResponse> implements ObjectCopyWith<$R, $In, $Out> {
  PortfolioResponseCopyWith<$R2, $In, $Out2>
      chain<$R2, $Out2 extends PortfolioResponse>(
          Then<PortfolioResponse, $Out2> t, Then<$Out2, $R2> t2);
  ErrorCopyWith<$R, Error, Error> get error;
  DepotCopyWith<$R, Depot, Depot> get depot;
  ValueCopyWith<$R, Value, Value> get depotLendingValue;
  ValueCopyWith<$R, Value, Value> get depotValue;
  ValueCopyWith<$R, Value, Value> get depotValuePrevDay;
  ListCopyWith<$R, Security, SecurityCopyWith<$R, Security, Security>>
      get securities;
  $R call(
      {Error? error,
      Depot? depot,
      Value? depotLendingValue,
      Value? depotValue,
      Value? depotValuePrevDay,
      List<Security>? securities});
}

class _PortfolioResponseCopyWithImpl<$R, $Out extends PortfolioResponse>
    extends CopyWithBase<$R, PortfolioResponse, $Out>
    implements PortfolioResponseCopyWith<$R, PortfolioResponse, $Out> {
  _PortfolioResponseCopyWithImpl(super.value, super.then, super.then2);
  @override
  PortfolioResponseCopyWith<$R2, PortfolioResponse, $Out2>
      chain<$R2, $Out2 extends PortfolioResponse>(
              Then<PortfolioResponse, $Out2> t, Then<$Out2, $R2> t2) =>
          _PortfolioResponseCopyWithImpl($value, t, t2);

  @override
  ErrorCopyWith<$R, Error, Error> get error =>
      $value.error.copyWith.chain($identity, (v) => call(error: v));
  @override
  DepotCopyWith<$R, Depot, Depot> get depot =>
      $value.depot.copyWith.chain($identity, (v) => call(depot: v));
  @override
  ValueCopyWith<$R, Value, Value> get depotLendingValue =>
      $value.depotLendingValue.copyWith
          .chain($identity, (v) => call(depotLendingValue: v));
  @override
  ValueCopyWith<$R, Value, Value> get depotValue =>
      $value.depotValue.copyWith.chain($identity, (v) => call(depotValue: v));
  @override
  ValueCopyWith<$R, Value, Value> get depotValuePrevDay =>
      $value.depotValuePrevDay.copyWith
          .chain($identity, (v) => call(depotValuePrevDay: v));
  @override
  ListCopyWith<$R, Security, SecurityCopyWith<$R, Security, Security>>
      get securities => ListCopyWith(
          $value.securities,
          (v, t) => v.copyWith.chain<$R, Security>($identity, t),
          (v) => call(securities: v));
  @override
  $R call(
          {Error? error,
          Depot? depot,
          Value? depotLendingValue,
          Value? depotValue,
          Value? depotValuePrevDay,
          List<Security>? securities}) =>
      $then(PortfolioResponse(
          error ?? $value.error,
          depot ?? $value.depot,
          depotLendingValue ?? $value.depotLendingValue,
          depotValue ?? $value.depotValue,
          depotValuePrevDay ?? $value.depotValuePrevDay,
          securities ?? $value.securities));
}

class DepotMapper extends MapperBase<Depot> {
  static MapperContainer container = MapperContainer(
    mappers: {DepotMapper()},
  );

  @override
  DepotMapperElement createElement(MapperContainer container) {
    return DepotMapperElement._(this, container);
  }

  @override
  String get id => 'Depot';

  static final fromMap = container.fromMap<Depot>;
  static final fromJson = container.fromJson<Depot>;
}

class DepotMapperElement extends MapperElementBase<Depot> {
  DepotMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  Depot decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  Depot fromMap(Map<String, dynamic> map) =>
      Depot(container.$get(map, 'number'));

  @override
  Function get encoder => encode;
  dynamic encode(Depot v) => toMap(v);
  Map<String, dynamic> toMap(Depot d) =>
      {'number': container.$enc(d.number, 'number')};

  @override
  String stringify(Depot self) =>
      'Depot(number: ${container.asString(self.number)})';
  @override
  int hash(Depot self) => container.hash(self.number);
  @override
  bool equals(Depot self, Depot other) =>
      container.isEqual(self.number, other.number);
}

mixin DepotMappable {
  String toJson() => DepotMapper.container.toJson(this as Depot);
  Map<String, dynamic> toMap() => DepotMapper.container.toMap(this as Depot);
  DepotCopyWith<Depot, Depot, Depot> get copyWith =>
      _DepotCopyWithImpl(this as Depot, $identity, $identity);
  @override
  String toString() => DepotMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          DepotMapper.container.isEqual(this, other));
  @override
  int get hashCode => DepotMapper.container.hash(this);
}

extension DepotValueCopy<$R, $Out extends Depot>
    on ObjectCopyWith<$R, Depot, $Out> {
  DepotCopyWith<$R, Depot, $Out> get asDepot =>
      base.as((v, t, t2) => _DepotCopyWithImpl(v, t, t2));
}

typedef DepotCopyWithBound = Depot;

abstract class DepotCopyWith<$R, $In extends Depot, $Out extends Depot>
    implements ObjectCopyWith<$R, $In, $Out> {
  DepotCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends Depot>(
      Then<Depot, $Out2> t, Then<$Out2, $R2> t2);
  $R call({String? number});
}

class _DepotCopyWithImpl<$R, $Out extends Depot>
    extends CopyWithBase<$R, Depot, $Out>
    implements DepotCopyWith<$R, Depot, $Out> {
  _DepotCopyWithImpl(super.value, super.then, super.then2);
  @override
  DepotCopyWith<$R2, Depot, $Out2> chain<$R2, $Out2 extends Depot>(
          Then<Depot, $Out2> t, Then<$Out2, $R2> t2) =>
      _DepotCopyWithImpl($value, t, t2);

  @override
  $R call({String? number}) => $then(Depot(number ?? $value.number));
}

class PaperMapper extends MapperBase<Paper> {
  static MapperContainer container = MapperContainer(
    mappers: {PaperMapper()},
  );

  @override
  PaperMapperElement createElement(MapperContainer container) {
    return PaperMapperElement._(this, container);
  }

  @override
  String get id => 'Paper';

  static final fromMap = container.fromMap<Paper>;
  static final fromJson = container.fromJson<Paper>;
}

class PaperMapperElement extends MapperElementBase<Paper> {
  PaperMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  Paper decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  Paper fromMap(Map<String, dynamic> map) => Paper(
      currency: container.$get(map, 'currency'),
      isin: container.$get(map, 'isin'),
      kind: container.$get(map, 'kind'),
      name: container.$get(map, 'name'),
      sin: container.$get(map, 'sin'),
      symbol: container.$get(map, 'symbol'),
      unit: container.$getOpt(map, 'unit'));

  @override
  Function get encoder => encode;
  dynamic encode(Paper v) => toMap(v);
  Map<String, dynamic> toMap(Paper p) => {
        'currency': container.$enc(p.currency, 'currency'),
        'isin': container.$enc(p.isin, 'isin'),
        'kind': container.$enc(p.kind, 'kind'),
        'name': container.$enc(p.name, 'name'),
        'sin': container.$enc(p.sin, 'sin'),
        'symbol': container.$enc(p.symbol, 'symbol'),
        'unit': container.$enc(p.unit, 'unit')
      };

  @override
  String stringify(Paper self) =>
      'Paper(currency: ${container.asString(self.currency)}, isin: ${container.asString(self.isin)}, kind: ${container.asString(self.kind)}, name: ${container.asString(self.name)}, sin: ${container.asString(self.sin)}, symbol: ${container.asString(self.symbol)}, unit: ${container.asString(self.unit)})';
  @override
  int hash(Paper self) =>
      container.hash(self.currency) ^
      container.hash(self.isin) ^
      container.hash(self.kind) ^
      container.hash(self.name) ^
      container.hash(self.sin) ^
      container.hash(self.symbol) ^
      container.hash(self.unit);
  @override
  bool equals(Paper self, Paper other) =>
      container.isEqual(self.currency, other.currency) &&
      container.isEqual(self.isin, other.isin) &&
      container.isEqual(self.kind, other.kind) &&
      container.isEqual(self.name, other.name) &&
      container.isEqual(self.sin, other.sin) &&
      container.isEqual(self.symbol, other.symbol) &&
      container.isEqual(self.unit, other.unit);
}

mixin PaperMappable {
  String toJson() => PaperMapper.container.toJson(this as Paper);
  Map<String, dynamic> toMap() => PaperMapper.container.toMap(this as Paper);
  PaperCopyWith<Paper, Paper, Paper> get copyWith =>
      _PaperCopyWithImpl(this as Paper, $identity, $identity);
  @override
  String toString() => PaperMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          PaperMapper.container.isEqual(this, other));
  @override
  int get hashCode => PaperMapper.container.hash(this);
}

extension PaperValueCopy<$R, $Out extends Paper>
    on ObjectCopyWith<$R, Paper, $Out> {
  PaperCopyWith<$R, Paper, $Out> get asPaper =>
      base.as((v, t, t2) => _PaperCopyWithImpl(v, t, t2));
}

typedef PaperCopyWithBound = Paper;

abstract class PaperCopyWith<$R, $In extends Paper, $Out extends Paper>
    implements ObjectCopyWith<$R, $In, $Out> {
  PaperCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends Paper>(
      Then<Paper, $Out2> t, Then<$Out2, $R2> t2);
  $R call(
      {String? currency,
      String? isin,
      String? kind,
      String? name,
      String? sin,
      String? symbol,
      int? unit});
}

class _PaperCopyWithImpl<$R, $Out extends Paper>
    extends CopyWithBase<$R, Paper, $Out>
    implements PaperCopyWith<$R, Paper, $Out> {
  _PaperCopyWithImpl(super.value, super.then, super.then2);
  @override
  PaperCopyWith<$R2, Paper, $Out2> chain<$R2, $Out2 extends Paper>(
          Then<Paper, $Out2> t, Then<$Out2, $R2> t2) =>
      _PaperCopyWithImpl($value, t, t2);

  @override
  $R call(
          {String? currency,
          String? isin,
          String? kind,
          String? name,
          String? sin,
          String? symbol,
          Object? unit = $none}) =>
      $then(Paper(
          currency: currency ?? $value.currency,
          isin: isin ?? $value.isin,
          kind: kind ?? $value.kind,
          name: name ?? $value.name,
          sin: sin ?? $value.sin,
          symbol: symbol ?? $value.symbol,
          unit: or(unit, $value.unit)));
}

class PurchasePerfDataMapper extends MapperBase<PurchasePerfData> {
  static MapperContainer container = MapperContainer(
    mappers: {PurchasePerfDataMapper()},
  )..linkAll({ValueMapper.container});

  @override
  PurchasePerfDataMapperElement createElement(MapperContainer container) {
    return PurchasePerfDataMapperElement._(this, container);
  }

  @override
  String get id => 'PurchasePerfData';

  static final fromMap = container.fromMap<PurchasePerfData>;
  static final fromJson = container.fromJson<PurchasePerfData>;
}

class PurchasePerfDataMapperElement
    extends MapperElementBase<PurchasePerfData> {
  PurchasePerfDataMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  PurchasePerfData decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  PurchasePerfData fromMap(Map<String, dynamic> map) => PurchasePerfData(
      container.$getOpt(map, 'ratingFxPrice'),
      container.$getOpt(map, 'ratingPrice'),
      container.$get(map, 'value'));

  @override
  Function get encoder => encode;
  dynamic encode(PurchasePerfData v) => toMap(v);
  Map<String, dynamic> toMap(PurchasePerfData p) => {
        'ratingFxPrice': container.$enc(p.ratingFxPrice, 'ratingFxPrice'),
        'ratingPrice': container.$enc(p.ratingPrice, 'ratingPrice'),
        'value': container.$enc(p.value, 'value')
      };

  @override
  String stringify(PurchasePerfData self) =>
      'PurchasePerfData(ratingFxPrice: ${container.asString(self.ratingFxPrice)}, ratingPrice: ${container.asString(self.ratingPrice)}, value: ${container.asString(self.value)})';
  @override
  int hash(PurchasePerfData self) =>
      container.hash(self.ratingFxPrice) ^
      container.hash(self.ratingPrice) ^
      container.hash(self.value);
  @override
  bool equals(PurchasePerfData self, PurchasePerfData other) =>
      container.isEqual(self.ratingFxPrice, other.ratingFxPrice) &&
      container.isEqual(self.ratingPrice, other.ratingPrice) &&
      container.isEqual(self.value, other.value);
}

mixin PurchasePerfDataMappable {
  String toJson() =>
      PurchasePerfDataMapper.container.toJson(this as PurchasePerfData);
  Map<String, dynamic> toMap() =>
      PurchasePerfDataMapper.container.toMap(this as PurchasePerfData);
  PurchasePerfDataCopyWith<PurchasePerfData, PurchasePerfData, PurchasePerfData>
      get copyWith => _PurchasePerfDataCopyWithImpl(
          this as PurchasePerfData, $identity, $identity);
  @override
  String toString() => PurchasePerfDataMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          PurchasePerfDataMapper.container.isEqual(this, other));
  @override
  int get hashCode => PurchasePerfDataMapper.container.hash(this);
}

extension PurchasePerfDataValueCopy<$R, $Out extends PurchasePerfData>
    on ObjectCopyWith<$R, PurchasePerfData, $Out> {
  PurchasePerfDataCopyWith<$R, PurchasePerfData, $Out> get asPurchasePerfData =>
      base.as((v, t, t2) => _PurchasePerfDataCopyWithImpl(v, t, t2));
}

typedef PurchasePerfDataCopyWithBound = PurchasePerfData;

abstract class PurchasePerfDataCopyWith<$R, $In extends PurchasePerfData,
    $Out extends PurchasePerfData> implements ObjectCopyWith<$R, $In, $Out> {
  PurchasePerfDataCopyWith<$R2, $In, $Out2>
      chain<$R2, $Out2 extends PurchasePerfData>(
          Then<PurchasePerfData, $Out2> t, Then<$Out2, $R2> t2);
  ValueCopyWith<$R, Value, Value>? get ratingPrice;
  ValueCopyWith<$R, Value, Value> get value;
  $R call({String? ratingFxPrice, Value? ratingPrice, Value? value});
}

class _PurchasePerfDataCopyWithImpl<$R, $Out extends PurchasePerfData>
    extends CopyWithBase<$R, PurchasePerfData, $Out>
    implements PurchasePerfDataCopyWith<$R, PurchasePerfData, $Out> {
  _PurchasePerfDataCopyWithImpl(super.value, super.then, super.then2);
  @override
  PurchasePerfDataCopyWith<$R2, PurchasePerfData, $Out2>
      chain<$R2, $Out2 extends PurchasePerfData>(
              Then<PurchasePerfData, $Out2> t, Then<$Out2, $R2> t2) =>
          _PurchasePerfDataCopyWithImpl($value, t, t2);

  @override
  ValueCopyWith<$R, Value, Value>? get ratingPrice =>
      $value.ratingPrice?.copyWith
          .chain($identity, (v) => call(ratingPrice: v));
  @override
  ValueCopyWith<$R, Value, Value> get value =>
      $value.value.copyWith.chain($identity, (v) => call(value: v));
  @override
  $R call(
          {Object? ratingFxPrice = $none,
          Object? ratingPrice = $none,
          Value? value}) =>
      $then(PurchasePerfData(or(ratingFxPrice, $value.ratingFxPrice),
          or(ratingPrice, $value.ratingPrice), value ?? $value.value));
}

class QuantityMapper extends MapperBase<Quantity> {
  static MapperContainer container = MapperContainer(
    mappers: {QuantityMapper()},
  );

  @override
  QuantityMapperElement createElement(MapperContainer container) {
    return QuantityMapperElement._(this, container);
  }

  @override
  String get id => 'Quantity';

  static final fromMap = container.fromMap<Quantity>;
  static final fromJson = container.fromJson<Quantity>;
}

class QuantityMapperElement extends MapperElementBase<Quantity> {
  QuantityMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  Quantity decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  Quantity fromMap(Map<String, dynamic> map) => Quantity(
      currency: container.$getOpt(map, 'currency'),
      value: container.$getOpt(map, 'value'));

  @override
  Function get encoder => encode;
  dynamic encode(Quantity v) => toMap(v);
  Map<String, dynamic> toMap(Quantity q) => {
        'currency': container.$enc(q.currency, 'currency'),
        'value': container.$enc(q.value, 'value')
      };

  @override
  String stringify(Quantity self) =>
      'Quantity(currency: ${container.asString(self.currency)}, value: ${container.asString(self.value)})';
  @override
  int hash(Quantity self) =>
      container.hash(self.currency) ^ container.hash(self.value);
  @override
  bool equals(Quantity self, Quantity other) =>
      container.isEqual(self.currency, other.currency) &&
      container.isEqual(self.value, other.value);
}

mixin QuantityMappable {
  String toJson() => QuantityMapper.container.toJson(this as Quantity);
  Map<String, dynamic> toMap() =>
      QuantityMapper.container.toMap(this as Quantity);
  QuantityCopyWith<Quantity, Quantity, Quantity> get copyWith =>
      _QuantityCopyWithImpl(this as Quantity, $identity, $identity);
  @override
  String toString() => QuantityMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          QuantityMapper.container.isEqual(this, other));
  @override
  int get hashCode => QuantityMapper.container.hash(this);
}

extension QuantityValueCopy<$R, $Out extends Quantity>
    on ObjectCopyWith<$R, Quantity, $Out> {
  QuantityCopyWith<$R, Quantity, $Out> get asQuantity =>
      base.as((v, t, t2) => _QuantityCopyWithImpl(v, t, t2));
}

typedef QuantityCopyWithBound = Quantity;

abstract class QuantityCopyWith<$R, $In extends Quantity, $Out extends Quantity>
    implements ObjectCopyWith<$R, $In, $Out> {
  QuantityCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends Quantity>(
      Then<Quantity, $Out2> t, Then<$Out2, $R2> t2);
  $R call({String? currency, String? value});
}

class _QuantityCopyWithImpl<$R, $Out extends Quantity>
    extends CopyWithBase<$R, Quantity, $Out>
    implements QuantityCopyWith<$R, Quantity, $Out> {
  _QuantityCopyWithImpl(super.value, super.then, super.then2);
  @override
  QuantityCopyWith<$R2, Quantity, $Out2> chain<$R2, $Out2 extends Quantity>(
          Then<Quantity, $Out2> t, Then<$Out2, $R2> t2) =>
      _QuantityCopyWithImpl($value, t, t2);

  @override
  $R call({Object? currency = $none, Object? value = $none}) => $then(Quantity(
      currency: or(currency, $value.currency), value: or(value, $value.value)));
}

class SecurityMapper extends MapperBase<Security> {
  static MapperContainer container = MapperContainer(
    mappers: {SecurityMapper()},
  )..linkAll({
      DepotMapper.container,
      ValueMapper.container,
      PaperMapper.container,
      PurchasePerfDataMapper.container,
      QuantityMapper.container,
    });

  @override
  SecurityMapperElement createElement(MapperContainer container) {
    return SecurityMapperElement._(this, container);
  }

  @override
  String get id => 'Security';

  static final fromMap = container.fromMap<Security>;
  static final fromJson = container.fromJson<Security>;
}

class SecurityMapperElement extends MapperElementBase<Security> {
  SecurityMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  Security decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  Security fromMap(Map<String, dynamic> map) => Security(
      container.$get(map, 'depot'),
      container.$getOpt(map, 'lendingValue'),
      container.$getOpt(map, 'lendingWeight'),
      container.$get(map, 'paper'),
      container.$get(map, 'purchasePerfData'),
      container.$getOpt(map, 'quantity'),
      container.$getOpt(map, 'quantityAvailable'),
      container.$getOpt(map, 'riskClass'),
      container.$getOpt(map, 'storageLocation'),
      container.$getOpt(map, 'storageLocationDescription'));

  @override
  Function get encoder => encode;
  dynamic encode(Security v) => toMap(v);
  Map<String, dynamic> toMap(Security s) => {
        'depot': container.$enc(s.depot, 'depot'),
        'lendingValue': container.$enc(s.lendingValue, 'lendingValue'),
        'lendingWeight': container.$enc(s.lendingWeight, 'lendingWeight'),
        'paper': container.$enc(s.paper, 'paper'),
        'purchasePerfData':
            container.$enc(s.purchasePerfData, 'purchasePerfData'),
        'quantity': container.$enc(s.quantity, 'quantity'),
        'quantityAvailable':
            container.$enc(s.quantityAvailable, 'quantityAvailable'),
        'riskClass': container.$enc(s.riskClass, 'riskClass'),
        'storageLocation': container.$enc(s.storageLocation, 'storageLocation'),
        'storageLocationDescription': container.$enc(
            s.storageLocationDescription, 'storageLocationDescription')
      };

  @override
  String stringify(Security self) =>
      'Security(depot: ${container.asString(self.depot)}, lendingValue: ${container.asString(self.lendingValue)}, lendingWeight: ${container.asString(self.lendingWeight)}, paper: ${container.asString(self.paper)}, purchasePerfData: ${container.asString(self.purchasePerfData)}, quantity: ${container.asString(self.quantity)}, quantityAvailable: ${container.asString(self.quantityAvailable)}, riskClass: ${container.asString(self.riskClass)}, storageLocation: ${container.asString(self.storageLocation)}, storageLocationDescription: ${container.asString(self.storageLocationDescription)})';
  @override
  int hash(Security self) =>
      container.hash(self.depot) ^
      container.hash(self.lendingValue) ^
      container.hash(self.lendingWeight) ^
      container.hash(self.paper) ^
      container.hash(self.purchasePerfData) ^
      container.hash(self.quantity) ^
      container.hash(self.quantityAvailable) ^
      container.hash(self.riskClass) ^
      container.hash(self.storageLocation) ^
      container.hash(self.storageLocationDescription);
  @override
  bool equals(Security self, Security other) =>
      container.isEqual(self.depot, other.depot) &&
      container.isEqual(self.lendingValue, other.lendingValue) &&
      container.isEqual(self.lendingWeight, other.lendingWeight) &&
      container.isEqual(self.paper, other.paper) &&
      container.isEqual(self.purchasePerfData, other.purchasePerfData) &&
      container.isEqual(self.quantity, other.quantity) &&
      container.isEqual(self.quantityAvailable, other.quantityAvailable) &&
      container.isEqual(self.riskClass, other.riskClass) &&
      container.isEqual(self.storageLocation, other.storageLocation) &&
      container.isEqual(
          self.storageLocationDescription, other.storageLocationDescription);
}

mixin SecurityMappable {
  String toJson() => SecurityMapper.container.toJson(this as Security);
  Map<String, dynamic> toMap() =>
      SecurityMapper.container.toMap(this as Security);
  SecurityCopyWith<Security, Security, Security> get copyWith =>
      _SecurityCopyWithImpl(this as Security, $identity, $identity);
  @override
  String toString() => SecurityMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          SecurityMapper.container.isEqual(this, other));
  @override
  int get hashCode => SecurityMapper.container.hash(this);
}

extension SecurityValueCopy<$R, $Out extends Security>
    on ObjectCopyWith<$R, Security, $Out> {
  SecurityCopyWith<$R, Security, $Out> get asSecurity =>
      base.as((v, t, t2) => _SecurityCopyWithImpl(v, t, t2));
}

typedef SecurityCopyWithBound = Security;

abstract class SecurityCopyWith<$R, $In extends Security, $Out extends Security>
    implements ObjectCopyWith<$R, $In, $Out> {
  SecurityCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends Security>(
      Then<Security, $Out2> t, Then<$Out2, $R2> t2);
  DepotCopyWith<$R, Depot, Depot> get depot;
  ValueCopyWith<$R, Value, Value>? get lendingValue;
  PaperCopyWith<$R, Paper, Paper> get paper;
  PurchasePerfDataCopyWith<$R, PurchasePerfData, PurchasePerfData>
      get purchasePerfData;
  QuantityCopyWith<$R, Quantity, Quantity>? get quantity;
  QuantityCopyWith<$R, Quantity, Quantity>? get quantityAvailable;
  $R call(
      {Depot? depot,
      Value? lendingValue,
      String? lendingWeight,
      Paper? paper,
      PurchasePerfData? purchasePerfData,
      Quantity? quantity,
      Quantity? quantityAvailable,
      String? riskClass,
      int? storageLocation,
      String? storageLocationDescription});
}

class _SecurityCopyWithImpl<$R, $Out extends Security>
    extends CopyWithBase<$R, Security, $Out>
    implements SecurityCopyWith<$R, Security, $Out> {
  _SecurityCopyWithImpl(super.value, super.then, super.then2);
  @override
  SecurityCopyWith<$R2, Security, $Out2> chain<$R2, $Out2 extends Security>(
          Then<Security, $Out2> t, Then<$Out2, $R2> t2) =>
      _SecurityCopyWithImpl($value, t, t2);

  @override
  DepotCopyWith<$R, Depot, Depot> get depot =>
      $value.depot.copyWith.chain($identity, (v) => call(depot: v));
  @override
  ValueCopyWith<$R, Value, Value>? get lendingValue =>
      $value.lendingValue?.copyWith
          .chain($identity, (v) => call(lendingValue: v));
  @override
  PaperCopyWith<$R, Paper, Paper> get paper =>
      $value.paper.copyWith.chain($identity, (v) => call(paper: v));
  @override
  PurchasePerfDataCopyWith<$R, PurchasePerfData, PurchasePerfData>
      get purchasePerfData => $value.purchasePerfData.copyWith
          .chain($identity, (v) => call(purchasePerfData: v));
  @override
  QuantityCopyWith<$R, Quantity, Quantity>? get quantity =>
      $value.quantity?.copyWith.chain($identity, (v) => call(quantity: v));
  @override
  QuantityCopyWith<$R, Quantity, Quantity>? get quantityAvailable =>
      $value.quantityAvailable?.copyWith
          .chain($identity, (v) => call(quantityAvailable: v));
  @override
  $R call(
          {Depot? depot,
          Object? lendingValue = $none,
          Object? lendingWeight = $none,
          Paper? paper,
          PurchasePerfData? purchasePerfData,
          Object? quantity = $none,
          Object? quantityAvailable = $none,
          Object? riskClass = $none,
          Object? storageLocation = $none,
          Object? storageLocationDescription = $none}) =>
      $then(Security(
          depot ?? $value.depot,
          or(lendingValue, $value.lendingValue),
          or(lendingWeight, $value.lendingWeight),
          paper ?? $value.paper,
          purchasePerfData ?? $value.purchasePerfData,
          or(quantity, $value.quantity),
          or(quantityAvailable, $value.quantityAvailable),
          or(riskClass, $value.riskClass),
          or(storageLocation, $value.storageLocation),
          or(storageLocationDescription, $value.storageLocationDescription)));
}

class ValueMapper extends MapperBase<Value> {
  static MapperContainer container = MapperContainer(
    mappers: {ValueMapper()},
  );

  @override
  ValueMapperElement createElement(MapperContainer container) {
    return ValueMapperElement._(this, container);
  }

  @override
  String get id => 'Value';

  static final fromMap = container.fromMap<Value>;
  static final fromJson = container.fromJson<Value>;
}

class ValueMapperElement extends MapperElementBase<Value> {
  ValueMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  Value decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  Value fromMap(Map<String, dynamic> map) =>
      Value(container.$get(map, 'currency'), container.$get(map, 'value'));

  @override
  Function get encoder => encode;
  dynamic encode(Value v) => toMap(v);
  Map<String, dynamic> toMap(Value v) => {
        'currency': container.$enc(v.currency, 'currency'),
        'value': container.$enc(v.value, 'value')
      };

  @override
  String stringify(Value self) =>
      'Value(currency: ${container.asString(self.currency)}, value: ${container.asString(self.value)})';
  @override
  int hash(Value self) =>
      container.hash(self.currency) ^ container.hash(self.value);
  @override
  bool equals(Value self, Value other) =>
      container.isEqual(self.currency, other.currency) &&
      container.isEqual(self.value, other.value);
}

mixin ValueMappable {
  String toJson() => ValueMapper.container.toJson(this as Value);
  Map<String, dynamic> toMap() => ValueMapper.container.toMap(this as Value);
  ValueCopyWith<Value, Value, Value> get copyWith =>
      _ValueCopyWithImpl(this as Value, $identity, $identity);
  @override
  String toString() => ValueMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          ValueMapper.container.isEqual(this, other));
  @override
  int get hashCode => ValueMapper.container.hash(this);
}

extension ValueValueCopy<$R, $Out extends Value>
    on ObjectCopyWith<$R, Value, $Out> {
  ValueCopyWith<$R, Value, $Out> get asValue =>
      base.as((v, t, t2) => _ValueCopyWithImpl(v, t, t2));
}

typedef ValueCopyWithBound = Value;

abstract class ValueCopyWith<$R, $In extends Value, $Out extends Value>
    implements ObjectCopyWith<$R, $In, $Out> {
  ValueCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends Value>(
      Then<Value, $Out2> t, Then<$Out2, $R2> t2);
  $R call({String? currency, String? value});
}

class _ValueCopyWithImpl<$R, $Out extends Value>
    extends CopyWithBase<$R, Value, $Out>
    implements ValueCopyWith<$R, Value, $Out> {
  _ValueCopyWithImpl(super.value, super.then, super.then2);
  @override
  ValueCopyWith<$R2, Value, $Out2> chain<$R2, $Out2 extends Value>(
          Then<Value, $Out2> t, Then<$Out2, $R2> t2) =>
      _ValueCopyWithImpl($value, t, t2);

  @override
  $R call({String? currency, String? value}) =>
      $then(Value(currency ?? $value.currency, value ?? $value.value));
}

class BalanceResponseMapper extends MapperBase<BalanceResponse> {
  static MapperContainer container = MapperContainer(
    mappers: {BalanceResponseMapper()},
  )..linkAll({ErrorMapper.container, BalanceInfoMapper.container});

  @override
  BalanceResponseMapperElement createElement(MapperContainer container) {
    return BalanceResponseMapperElement._(this, container);
  }

  @override
  String get id => 'BalanceResponse';

  static final fromMap = container.fromMap<BalanceResponse>;
  static final fromJson = container.fromJson<BalanceResponse>;
}

class BalanceResponseMapperElement extends MapperElementBase<BalanceResponse> {
  BalanceResponseMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  BalanceResponse decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  BalanceResponse fromMap(Map<String, dynamic> map) => BalanceResponse(
      container.$get(map, 'error'), container.$get(map, 'balanceInfo'));

  @override
  Function get encoder => encode;
  dynamic encode(BalanceResponse v) => toMap(v);
  Map<String, dynamic> toMap(BalanceResponse b) => {
        'error': container.$enc(b.error, 'error'),
        'balanceInfo': container.$enc(b.balanceInfo, 'balanceInfo')
      };

  @override
  String stringify(BalanceResponse self) =>
      'BalanceResponse(balanceInfo: ${container.asString(self.balanceInfo)})';
  @override
  int hash(BalanceResponse self) => container.hash(self.balanceInfo);
  @override
  bool equals(BalanceResponse self, BalanceResponse other) =>
      container.isEqual(self.balanceInfo, other.balanceInfo);
}

mixin BalanceResponseMappable {
  String toJson() =>
      BalanceResponseMapper.container.toJson(this as BalanceResponse);
  Map<String, dynamic> toMap() =>
      BalanceResponseMapper.container.toMap(this as BalanceResponse);
  BalanceResponseCopyWith<BalanceResponse, BalanceResponse, BalanceResponse>
      get copyWith => _BalanceResponseCopyWithImpl(
          this as BalanceResponse, $identity, $identity);
  @override
  String toString() => BalanceResponseMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          BalanceResponseMapper.container.isEqual(this, other));
  @override
  int get hashCode => BalanceResponseMapper.container.hash(this);
}

extension BalanceResponseValueCopy<$R, $Out extends BalanceResponse>
    on ObjectCopyWith<$R, BalanceResponse, $Out> {
  BalanceResponseCopyWith<$R, BalanceResponse, $Out> get asBalanceResponse =>
      base.as((v, t, t2) => _BalanceResponseCopyWithImpl(v, t, t2));
}

typedef BalanceResponseCopyWithBound = BalanceResponse;

abstract class BalanceResponseCopyWith<$R, $In extends BalanceResponse,
    $Out extends BalanceResponse> implements ObjectCopyWith<$R, $In, $Out> {
  BalanceResponseCopyWith<$R2, $In, $Out2>
      chain<$R2, $Out2 extends BalanceResponse>(
          Then<BalanceResponse, $Out2> t, Then<$Out2, $R2> t2);
  ErrorCopyWith<$R, Error, Error> get error;
  BalanceInfoCopyWith<$R, BalanceInfo, BalanceInfo> get balanceInfo;
  $R call({Error? error, BalanceInfo? balanceInfo});
}

class _BalanceResponseCopyWithImpl<$R, $Out extends BalanceResponse>
    extends CopyWithBase<$R, BalanceResponse, $Out>
    implements BalanceResponseCopyWith<$R, BalanceResponse, $Out> {
  _BalanceResponseCopyWithImpl(super.value, super.then, super.then2);
  @override
  BalanceResponseCopyWith<$R2, BalanceResponse, $Out2>
      chain<$R2, $Out2 extends BalanceResponse>(
              Then<BalanceResponse, $Out2> t, Then<$Out2, $R2> t2) =>
          _BalanceResponseCopyWithImpl($value, t, t2);

  @override
  ErrorCopyWith<$R, Error, Error> get error =>
      $value.error.copyWith.chain($identity, (v) => call(error: v));
  @override
  BalanceInfoCopyWith<$R, BalanceInfo, BalanceInfo> get balanceInfo =>
      $value.balanceInfo.copyWith.chain($identity, (v) => call(balanceInfo: v));
  @override
  $R call({Error? error, BalanceInfo? balanceInfo}) => $then(BalanceResponse(
      error ?? $value.error, balanceInfo ?? $value.balanceInfo));
}

class AccountMetaMapper extends MapperBase<AccountMeta> {
  static MapperContainer? _c;
  static MapperContainer container = _c ??
      ((_c = MapperContainer(
        mappers: {AccountMetaMapper()},
      ))
        ..linkAll({AccountMapper.container, BankMapper.container}));

  @override
  AccountMetaMapperElement createElement(MapperContainer container) {
    return AccountMetaMapperElement._(this, container);
  }

  @override
  String get id => 'AccountMeta';

  static final fromMap = container.fromMap<AccountMeta>;
  static final fromJson = container.fromJson<AccountMeta>;
}

class AccountMetaMapperElement extends MapperElementBase<AccountMeta> {
  AccountMetaMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  AccountMeta decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  AccountMeta fromMap(Map<String, dynamic> map) =>
      AccountMeta(container.$get(map, 'bank'), container.$get(map, 'number'));

  @override
  Function get encoder => encode;
  dynamic encode(AccountMeta v) => toMap(v);
  Map<String, dynamic> toMap(AccountMeta a) => {
        'bank': container.$enc(a.bank, 'bank'),
        'number': container.$enc(a.number, 'number')
      };

  @override
  String stringify(AccountMeta self) =>
      'AccountMeta(bank: ${container.asString(self.bank)}, number: ${container.asString(self.number)})';
  @override
  int hash(AccountMeta self) =>
      container.hash(self.bank) ^ container.hash(self.number);
  @override
  bool equals(AccountMeta self, AccountMeta other) =>
      container.isEqual(self.bank, other.bank) &&
      container.isEqual(self.number, other.number);
}

mixin AccountMetaMappable {
  String toJson() => AccountMetaMapper.container.toJson(this as AccountMeta);
  Map<String, dynamic> toMap() =>
      AccountMetaMapper.container.toMap(this as AccountMeta);
  AccountMetaCopyWith<AccountMeta, AccountMeta, AccountMeta> get copyWith =>
      _AccountMetaCopyWithImpl(this as AccountMeta, $identity, $identity);
  @override
  String toString() => AccountMetaMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          AccountMetaMapper.container.isEqual(this, other));
  @override
  int get hashCode => AccountMetaMapper.container.hash(this);
}

extension AccountMetaValueCopy<$R, $Out extends AccountMeta>
    on ObjectCopyWith<$R, AccountMeta, $Out> {
  AccountMetaCopyWith<$R, AccountMeta, $Out> get asAccountMeta =>
      base.as((v, t, t2) => _AccountMetaCopyWithImpl(v, t, t2));
}

typedef AccountMetaCopyWithBound = AccountMeta;

abstract class AccountMetaCopyWith<$R, $In extends AccountMeta,
    $Out extends AccountMeta> implements ObjectCopyWith<$R, $In, $Out> {
  AccountMetaCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends AccountMeta>(
      Then<AccountMeta, $Out2> t, Then<$Out2, $R2> t2);
  BankCopyWith<$R, Bank, Bank> get bank;
  $R call({Bank? bank, String? number});
}

class _AccountMetaCopyWithImpl<$R, $Out extends AccountMeta>
    extends CopyWithBase<$R, AccountMeta, $Out>
    implements AccountMetaCopyWith<$R, AccountMeta, $Out> {
  _AccountMetaCopyWithImpl(super.value, super.then, super.then2);
  @override
  AccountMetaCopyWith<$R2, AccountMeta, $Out2>
      chain<$R2, $Out2 extends AccountMeta>(
              Then<AccountMeta, $Out2> t, Then<$Out2, $R2> t2) =>
          _AccountMetaCopyWithImpl($value, t, t2);

  @override
  BankCopyWith<$R, Bank, Bank> get bank =>
      $value.bank.copyWith.chain($identity, (v) => call(bank: v));
  @override
  $R call({Bank? bank, String? number}) =>
      $then(AccountMeta(bank ?? $value.bank, number ?? $value.number));
}

class BalanceBookedMapper extends MapperBase<BalanceBooked> {
  static MapperContainer container = MapperContainer(
    mappers: {BalanceBookedMapper()},
  )..linkAll({ValueMapper.container});

  @override
  BalanceBookedMapperElement createElement(MapperContainer container) {
    return BalanceBookedMapperElement._(this, container);
  }

  @override
  String get id => 'BalanceBooked';

  static final fromMap = container.fromMap<BalanceBooked>;
  static final fromJson = container.fromJson<BalanceBooked>;
}

class BalanceBookedMapperElement extends MapperElementBase<BalanceBooked> {
  BalanceBookedMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  BalanceBooked decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  BalanceBooked fromMap(Map<String, dynamic> map) => BalanceBooked(
      amount: container.$get(map, 'amount'),
      datetime: container.$get(map, 'datetime'));

  @override
  Function get encoder => encode;
  dynamic encode(BalanceBooked v) => toMap(v);
  Map<String, dynamic> toMap(BalanceBooked b) => {
        'amount': container.$enc(b.amount, 'amount'),
        'datetime': container.$enc(b.datetime, 'datetime')
      };

  @override
  String stringify(BalanceBooked self) =>
      'BalanceBooked(amount: ${container.asString(self.amount)}, datetime: ${container.asString(self.datetime)})';
  @override
  int hash(BalanceBooked self) =>
      container.hash(self.amount) ^ container.hash(self.datetime);
  @override
  bool equals(BalanceBooked self, BalanceBooked other) =>
      container.isEqual(self.amount, other.amount) &&
      container.isEqual(self.datetime, other.datetime);
}

mixin BalanceBookedMappable {
  String toJson() =>
      BalanceBookedMapper.container.toJson(this as BalanceBooked);
  Map<String, dynamic> toMap() =>
      BalanceBookedMapper.container.toMap(this as BalanceBooked);
  BalanceBookedCopyWith<BalanceBooked, BalanceBooked, BalanceBooked>
      get copyWith => _BalanceBookedCopyWithImpl(
          this as BalanceBooked, $identity, $identity);
  @override
  String toString() => BalanceBookedMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          BalanceBookedMapper.container.isEqual(this, other));
  @override
  int get hashCode => BalanceBookedMapper.container.hash(this);
}

extension BalanceBookedValueCopy<$R, $Out extends BalanceBooked>
    on ObjectCopyWith<$R, BalanceBooked, $Out> {
  BalanceBookedCopyWith<$R, BalanceBooked, $Out> get asBalanceBooked =>
      base.as((v, t, t2) => _BalanceBookedCopyWithImpl(v, t, t2));
}

typedef BalanceBookedCopyWithBound = BalanceBooked;

abstract class BalanceBookedCopyWith<$R, $In extends BalanceBooked,
    $Out extends BalanceBooked> implements ObjectCopyWith<$R, $In, $Out> {
  BalanceBookedCopyWith<$R2, $In, $Out2>
      chain<$R2, $Out2 extends BalanceBooked>(
          Then<BalanceBooked, $Out2> t, Then<$Out2, $R2> t2);
  ValueCopyWith<$R, Value, Value> get amount;
  $R call({Value? amount, DateTime? datetime});
}

class _BalanceBookedCopyWithImpl<$R, $Out extends BalanceBooked>
    extends CopyWithBase<$R, BalanceBooked, $Out>
    implements BalanceBookedCopyWith<$R, BalanceBooked, $Out> {
  _BalanceBookedCopyWithImpl(super.value, super.then, super.then2);
  @override
  BalanceBookedCopyWith<$R2, BalanceBooked, $Out2>
      chain<$R2, $Out2 extends BalanceBooked>(
              Then<BalanceBooked, $Out2> t, Then<$Out2, $R2> t2) =>
          _BalanceBookedCopyWithImpl($value, t, t2);

  @override
  ValueCopyWith<$R, Value, Value> get amount =>
      $value.amount.copyWith.chain($identity, (v) => call(amount: v));
  @override
  $R call({Value? amount, DateTime? datetime}) => $then(BalanceBooked(
      amount: amount ?? $value.amount, datetime: datetime ?? $value.datetime));
}

class BalanceInfoMapper extends MapperBase<BalanceInfo> {
  static MapperContainer container = MapperContainer(
    mappers: {BalanceInfoMapper()},
  )..linkAll({
      AccountMetaMapper.container,
      BalanceBookedMapper.container,
      ValueMapper.container,
    });

  @override
  BalanceInfoMapperElement createElement(MapperContainer container) {
    return BalanceInfoMapperElement._(this, container);
  }

  @override
  String get id => 'BalanceInfo';

  static final fromMap = container.fromMap<BalanceInfo>;
  static final fromJson = container.fromJson<BalanceInfo>;
}

class BalanceInfoMapperElement extends MapperElementBase<BalanceInfo> {
  BalanceInfoMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  BalanceInfo decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  BalanceInfo fromMap(Map<String, dynamic> map) => BalanceInfo(
      account: container.$get(map, 'account'),
      balanceBooked: container.$get(map, 'balanceBooked'),
      creditLine: container.$get(map, 'creditLine'),
      maxBuyingPowerMoneyTransfer:
          container.$get(map, 'maxBuyingPowerMoneyTransfer'),
      maxBuyingPowerOrder: container.$get(map, 'maxBuyingPowerOrder'));

  @override
  Function get encoder => encode;
  dynamic encode(BalanceInfo v) => toMap(v);
  Map<String, dynamic> toMap(BalanceInfo b) => {
        'account': container.$enc(b.account, 'account'),
        'balanceBooked': container.$enc(b.balanceBooked, 'balanceBooked'),
        'creditLine': container.$enc(b.creditLine, 'creditLine'),
        'maxBuyingPowerMoneyTransfer': container.$enc(
            b.maxBuyingPowerMoneyTransfer, 'maxBuyingPowerMoneyTransfer'),
        'maxBuyingPowerOrder':
            container.$enc(b.maxBuyingPowerOrder, 'maxBuyingPowerOrder')
      };

  @override
  String stringify(BalanceInfo self) =>
      'BalanceInfo(account: ${container.asString(self.account)}, balanceBooked: ${container.asString(self.balanceBooked)}, creditLine: ${container.asString(self.creditLine)}, maxBuyingPowerMoneyTransfer: ${container.asString(self.maxBuyingPowerMoneyTransfer)}, maxBuyingPowerOrder: ${container.asString(self.maxBuyingPowerOrder)})';
  @override
  int hash(BalanceInfo self) =>
      container.hash(self.account) ^
      container.hash(self.balanceBooked) ^
      container.hash(self.creditLine) ^
      container.hash(self.maxBuyingPowerMoneyTransfer) ^
      container.hash(self.maxBuyingPowerOrder);
  @override
  bool equals(BalanceInfo self, BalanceInfo other) =>
      container.isEqual(self.account, other.account) &&
      container.isEqual(self.balanceBooked, other.balanceBooked) &&
      container.isEqual(self.creditLine, other.creditLine) &&
      container.isEqual(self.maxBuyingPowerMoneyTransfer,
          other.maxBuyingPowerMoneyTransfer) &&
      container.isEqual(self.maxBuyingPowerOrder, other.maxBuyingPowerOrder);
}

mixin BalanceInfoMappable {
  String toJson() => BalanceInfoMapper.container.toJson(this as BalanceInfo);
  Map<String, dynamic> toMap() =>
      BalanceInfoMapper.container.toMap(this as BalanceInfo);
  BalanceInfoCopyWith<BalanceInfo, BalanceInfo, BalanceInfo> get copyWith =>
      _BalanceInfoCopyWithImpl(this as BalanceInfo, $identity, $identity);
  @override
  String toString() => BalanceInfoMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          BalanceInfoMapper.container.isEqual(this, other));
  @override
  int get hashCode => BalanceInfoMapper.container.hash(this);
}

extension BalanceInfoValueCopy<$R, $Out extends BalanceInfo>
    on ObjectCopyWith<$R, BalanceInfo, $Out> {
  BalanceInfoCopyWith<$R, BalanceInfo, $Out> get asBalanceInfo =>
      base.as((v, t, t2) => _BalanceInfoCopyWithImpl(v, t, t2));
}

typedef BalanceInfoCopyWithBound = BalanceInfo;

abstract class BalanceInfoCopyWith<$R, $In extends BalanceInfo,
    $Out extends BalanceInfo> implements ObjectCopyWith<$R, $In, $Out> {
  BalanceInfoCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends BalanceInfo>(
      Then<BalanceInfo, $Out2> t, Then<$Out2, $R2> t2);
  AccountMetaCopyWith<$R, AccountMeta, AccountMeta> get account;
  BalanceBookedCopyWith<$R, BalanceBooked, BalanceBooked> get balanceBooked;
  ValueCopyWith<$R, Value, Value> get creditLine;
  ValueCopyWith<$R, Value, Value> get maxBuyingPowerMoneyTransfer;
  ValueCopyWith<$R, Value, Value> get maxBuyingPowerOrder;
  $R call(
      {AccountMeta? account,
      BalanceBooked? balanceBooked,
      Value? creditLine,
      Value? maxBuyingPowerMoneyTransfer,
      Value? maxBuyingPowerOrder});
}

class _BalanceInfoCopyWithImpl<$R, $Out extends BalanceInfo>
    extends CopyWithBase<$R, BalanceInfo, $Out>
    implements BalanceInfoCopyWith<$R, BalanceInfo, $Out> {
  _BalanceInfoCopyWithImpl(super.value, super.then, super.then2);
  @override
  BalanceInfoCopyWith<$R2, BalanceInfo, $Out2>
      chain<$R2, $Out2 extends BalanceInfo>(
              Then<BalanceInfo, $Out2> t, Then<$Out2, $R2> t2) =>
          _BalanceInfoCopyWithImpl($value, t, t2);

  @override
  AccountMetaCopyWith<$R, AccountMeta, AccountMeta> get account =>
      $value.account.copyWith.chain($identity, (v) => call(account: v));
  @override
  BalanceBookedCopyWith<$R, BalanceBooked, BalanceBooked> get balanceBooked =>
      $value.balanceBooked.copyWith
          .chain($identity, (v) => call(balanceBooked: v));
  @override
  ValueCopyWith<$R, Value, Value> get creditLine =>
      $value.creditLine.copyWith.chain($identity, (v) => call(creditLine: v));
  @override
  ValueCopyWith<$R, Value, Value> get maxBuyingPowerMoneyTransfer =>
      $value.maxBuyingPowerMoneyTransfer.copyWith
          .chain($identity, (v) => call(maxBuyingPowerMoneyTransfer: v));
  @override
  ValueCopyWith<$R, Value, Value> get maxBuyingPowerOrder =>
      $value.maxBuyingPowerOrder.copyWith
          .chain($identity, (v) => call(maxBuyingPowerOrder: v));
  @override
  $R call(
          {AccountMeta? account,
          BalanceBooked? balanceBooked,
          Value? creditLine,
          Value? maxBuyingPowerMoneyTransfer,
          Value? maxBuyingPowerOrder}) =>
      $then(BalanceInfo(
          account: account ?? $value.account,
          balanceBooked: balanceBooked ?? $value.balanceBooked,
          creditLine: creditLine ?? $value.creditLine,
          maxBuyingPowerMoneyTransfer:
              maxBuyingPowerMoneyTransfer ?? $value.maxBuyingPowerMoneyTransfer,
          maxBuyingPowerOrder:
              maxBuyingPowerOrder ?? $value.maxBuyingPowerOrder));
}

class ErrorCodeMapper extends EnumMapper<ErrorCode> {
  static MapperContainer container = MapperContainer(
    mappers: {ErrorCodeMapper()},
  );

  static final fromValue = container.fromValue<ErrorCode>;

  @override
  ErrorCode decode(dynamic value) {
    switch (value) {
      case "0":
        return ErrorCode.CODE_OK;
      case "1":
        return ErrorCode.CODE_ERROR;
      case "10":
        return ErrorCode.CODE_SESSION_INVALID;
      case "107":
        return ErrorCode.CODE_LENGTH_INVALID;
      case "291":
        return ErrorCode.CODE_IDENTIFICATION_INVALID;
      case "304":
        return ErrorCode.CODE_IDENT_REQUEST_INVALID;
      case "348":
        return ErrorCode.CODE_PIN_INVALID;
      case "403":
        return ErrorCode.CODE_CONFIRM_AUTH_USE_CASE_REQUEST_INVALID;
      case "465":
        return ErrorCode.CODE_AUTH_USE_CASE_ID_INVALID;
      case "PTS_100":
        return ErrorCode.CODE_IDENTIFICATION_CHALLENGE_EXPIRED;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ErrorCode self) {
    switch (self) {
      case ErrorCode.CODE_OK:
        return "0";
      case ErrorCode.CODE_ERROR:
        return "1";
      case ErrorCode.CODE_SESSION_INVALID:
        return "10";
      case ErrorCode.CODE_LENGTH_INVALID:
        return "107";
      case ErrorCode.CODE_IDENTIFICATION_INVALID:
        return "291";
      case ErrorCode.CODE_IDENT_REQUEST_INVALID:
        return "304";
      case ErrorCode.CODE_PIN_INVALID:
        return "348";
      case ErrorCode.CODE_CONFIRM_AUTH_USE_CASE_REQUEST_INVALID:
        return "403";
      case ErrorCode.CODE_AUTH_USE_CASE_ID_INVALID:
        return "465";
      case ErrorCode.CODE_IDENTIFICATION_CHALLENGE_EXPIRED:
        return "PTS_100";
    }
  }
}

extension ErrorCodeMapperExtension on ErrorCode {
  dynamic toValue() => ErrorCodeMapper.container.toValue(this);
}

class AccountTypeMapper extends EnumMapper<AccountType> {
  static MapperContainer container = MapperContainer(
    mappers: {AccountTypeMapper()},
  );

  static final fromValue = container.fromValue<AccountType>;

  @override
  AccountType decode(dynamic value) {
    switch (value) {
      case "CSH":
        return AccountType.CASH;
      case "DEP":
        return AccountType.DEPOT;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(AccountType self) {
    switch (self) {
      case AccountType.CASH:
        return "CSH";
      case AccountType.DEPOT:
        return "DEP";
    }
  }
}

extension AccountTypeMapperExtension on AccountType {
  dynamic toValue() => AccountTypeMapper.container.toValue(this);
}
