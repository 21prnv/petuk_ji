import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:petuk_ji/widgets/text_input_field.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _country = TextEditingController();
  var _defaultText = 'Default text';
  @override
  Widget build(BuildContext context) {
    final countryCode = Localizations.localeOf(context).countryCode;
    print(countryCode);
    final theme = _getAppTheme(countryCode!);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
      ),
      backgroundColor: theme.primaryColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 300,
              child: TextInputField(
                  textEditingController: _country,
                  hintText: 'Country',
                  textInputType: TextInputType.text),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    _defaultText = _country.text;
                  });
                },
                child: const Text('Add Text')),
            Text(_defaultText),
          ],
        ),
      ),
    );
  }
}

ThemeData _getAppTheme(String countryCode) {
  switch (countryCode) {
    case 'US':
      return ThemeData(primaryColor: Colors.red);
    case 'IN':
      return ThemeData(primaryColor: Colors.orange);
    default:
      return ThemeData(primaryColor: Colors.blue);
  }
}
