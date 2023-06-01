import 'package:flutter_bloc/flutter_bloc.dart';
import 'state.dart';

import '../shared/network/local/cache_helper.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isDark = false;

  void getDarkStatus() {
    if(CacheHelper.getBoolean(key: 'isDark') == null) {
      isDark = false;
    } else {
      isDark = CacheHelper.getBoolean(key: 'isDark')!;
    }
  }

  void changeAppTheme() {
    isDark = !isDark;
    CacheHelper.setBoolean(key: 'isDark', value: isDark).then((value){
      emit(AppChangeThemeState());
    });
  }
}
