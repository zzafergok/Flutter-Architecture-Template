import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:shoppinglist/core/constants/enums/app_theme_enum.dart';
import 'package:shoppinglist/core/init/notifier/theme_notifier.dart';
part 'test_view_model.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store {
  BuildContext context;

  void setContext(BuildContext context) {
    this.context = context;
  }

  @observable
  int number = 0;

  @computed
  bool get isEven => number % 2 == 0;

  @action
  void incrementNumber() {
    number++;
  }

  void changeTheme() {
    Provider.of<ThemeNotifier>(context, listen: false)
        .changeValue(AppThemes.DARK);
  }
}
