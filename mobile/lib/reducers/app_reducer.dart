import 'package:mobile/models/app_state.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
      isLoading: false,
      count: counterReducer(state.count, action),
  );
}
