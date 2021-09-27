import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_internationalization/translations/locale_keys.g.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(LocaleKeys.hi_text.tr()),
            Text(LocaleKeys.translate.tr()),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      await context.setLocale(Locale('en'));
                    },
                    child: Text('English')),

                ElevatedButton(onPressed: () async{
                   await context.setLocale(Locale('es'));
                }, 
                child: Text('Spanish')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
