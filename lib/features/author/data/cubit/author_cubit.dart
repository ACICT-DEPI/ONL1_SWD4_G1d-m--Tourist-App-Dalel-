import 'package:dalel/features/author/data/cubit/author_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AuthorCubit extends Cubit<AuthorState> {
  AuthorCubit() : super(AuthorInitial());
}
