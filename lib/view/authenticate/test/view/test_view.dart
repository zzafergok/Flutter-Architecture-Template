import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shoppinglist/core/base/state/base_state.dart';
import 'package:shoppinglist/core/base/view/base_widget.dart';
import 'package:shoppinglist/core/extension/string_extension.dart';
import 'package:shoppinglist/core/init/lang/language_manager.dart';
import 'package:shoppinglist/generated/locale_keys.g.dart';
import 'package:shoppinglist/view/authenticate/test/viewmodel/test_view_model.dart';

class TestView extends StatefulWidget {
  @override
  _TestViewState createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  TestViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
        viewModel: TestViewModel(),
        onModelReady: (model) {
          viewModel = model;
        },
        onPageBuilder: (context, value) => scaffoldBody);
  }

  Widget get scaffoldBody => Scaffold(
        appBar: AppBar(
          title: textWelcomeWidget(),
          actions: [iconButtonChangeTheme()],
        ),
        floatingActionButton: floatingActionButtonNumberIncrement,
        body: textNumber,
      );

  Text textWelcomeWidget() => Text(LocaleKeys.welcome.locale);

  IconButton iconButtonChangeTheme() {
    return IconButton(
        icon: Icon(Icons.change_history),
        onPressed: () {
          context.locale = LanguageManager.instance.enLocale;
        });
  }

  FloatingActionButton get floatingActionButtonNumberIncrement {
    return FloatingActionButton(
      onPressed: () => viewModel.incrementNumber(),
    );
  }

  Widget get textNumber =>
      Observer(builder: (context) => Text(viewModel.number.toString()));
}
