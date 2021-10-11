import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List languageCode = ["en","zh"];
List countryCode = ["US","CN"];

void onActionSheetPress(BuildContext context) {
  showDemoActionSheet(
    context: context,
    child: CupertinoActionSheet(
      title: const Text('label.language.selection.title').tr(),
      message: const Text('label.language.selection.message').tr(),
      actions: <Widget>[
        CupertinoActionSheetAction(
          child: const Text('label.language.name.en').tr(),
          onPressed: () => Navigator.pop(context, '0'),
        ),
        CupertinoActionSheetAction(
          child: const Text('label.language.name.zh').tr(),
          onPressed: () => Navigator.pop(context, '1'),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: const Text('label.button.cancel').tr(),
        isDefaultAction: true,
        onPressed: () => Navigator.pop(context, null),
      ),
    ),
  );
}

void showDemoActionSheet({required BuildContext context, required Widget child}) {
  showCupertinoModalPopup<String>(
      context: context,
      builder: (BuildContext context) => child).then((String? i)
  {
    if(i != null) {
      EasyLocalization.of(context)!.setLocale(Locale(languageCode[int.parse(i)],countryCode[int.parse(i)]));
    }
  });
}