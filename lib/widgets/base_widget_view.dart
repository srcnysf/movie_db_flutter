import 'package:flutter/material.dart';
import 'package:movie_db_flutter/constants/constants.dart';

class BaseView extends StatelessWidget {
  final bool onError;
  final bool onLoading;
  final bool? isEmpty;
  final Widget body;
  final Widget? emptyState;
  final Widget error;
  final AppBar? appBar;
  BaseView({
    Key? key,
    required this.onError,
    required this.onLoading,
    required this.body,
    required this.error,
    this.appBar,
    this.isEmpty = false,
    this.emptyState,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Constants.background,
      appBar: appBar,
      body: Container(
        child: onError
            ? Center(child: error)
            : onLoading
                ? Center(child: CircularProgressIndicator())
                : isEmpty != null && isEmpty!
                    ? Center(
                        child: emptyState,
                      )
                    : body,
      ),
    );
  }
}
