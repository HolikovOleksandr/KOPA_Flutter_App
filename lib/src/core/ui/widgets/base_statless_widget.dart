import 'package:kopa/src/core/ui/show_message_mixin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class BaseStatelessWidget extends StatelessWidget
    with ShowMessageMixin {
  const BaseStatelessWidget({Key? key}) : super(key: key);

  Widget getLayout(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return getLayout(context);
  }
}
