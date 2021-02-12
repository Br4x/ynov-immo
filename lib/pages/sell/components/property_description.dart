import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ynov_immo/pages/sell/components/style/common_style.dart';
import 'package:ynov_immo/pages/sell/components/interfaces/sell_form.dart';
import 'package:ynov_immo/pages/sell/components/miscellaeneous/separator.dart';

class PropertyDescription extends StatefulWidget {
  final Function(String, dynamic) setParentState;

  const PropertyDescription({Key key, this.setParentState}) : super(key: key);

  @override
  _PropertyDescriptionState createState() => _PropertyDescriptionState();
}

class _PropertyDescriptionState extends State<PropertyDescription> {
  final catchPhraseController = TextEditingController();
  final descriptionController = TextEditingController();
  final surfaceController = TextEditingController();

  final RegExp decimalRegex = RegExp(r'(^\d*)');

  @override
  void initState() {
    super.initState();
    catchPhraseController.addListener(_catchPhraseListener);
    descriptionController.addListener(_descriptionListener);
    surfaceController.addListener(_surfaceListener);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: Text('Phrase d\'accroche', style: CommonStyle.text())
                ),
                Tooltip(
                  message: "Mets une bonne phrase pour attirer des clients!",
                  child: new Icon(Icons.help),
                )
              ],
            ),
            TextField(
              decoration: CommonStyle.textFieldDecoration("Ligne d'accroche"),
              controller: catchPhraseController,
            ),
            Separator(),

            Text('Description', style: CommonStyle.text()),
            TextField(
              decoration: CommonStyle.textFieldDecoration("Description du bien"),
              keyboardType: TextInputType.multiline,
              maxLines: 7,
              controller: descriptionController,
            ),
            Separator(),

            Text('Surface', style: CommonStyle.text()),
            TextField(
              decoration: CommonStyle.textFieldDecoration("Surface en m²"),
              keyboardType: TextInputType.numberWithOptions(decimal: false),
              inputFormatters: [
                FilteringTextInputFormatter.allow(decimalRegex)
              ],
              controller: surfaceController,
            )
          ],
        ),
      )
    );
  }

  void _catchPhraseListener() {
    widget.setParentState(SellFormFields.CATCH_PHRASE, catchPhraseController.text);
  }

  void _descriptionListener() {
    widget.setParentState(SellFormFields.DESCRIPTION, descriptionController.text);
  }

  void _surfaceListener() {
    widget.setParentState(SellFormFields.SURFACE, surfaceController.text);
  }
}
