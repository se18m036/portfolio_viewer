import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:portfolio_viewer/authentication/bloc/authentication_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

// TODO remove this as it isn't really used
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.overview()) {
    on<DepotSelected>(_onDepotSelected);
  }

  void _onDepotSelected(
    DepotSelected event,
    Emitter<HomeState> emit,
  ) {
    return emit(HomeState.depot(event.depot));

    // return emit(
    //   account != null
    //       ? AuthenticationState.authenticated(account)
    //       : const AuthenticationState.unauthenticated(),
    // );

    // final username = Username.dirty(event.username);
    // emit(
    //   state.copyWith(
    //     username: username,
    //     status: Formz.validate([state.password, username]),
    //   ),
    // );
  }
}
