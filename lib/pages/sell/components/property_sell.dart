import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ynov_immo/pages/sell/components/interfaces/sell_form.dart';
import 'package:ynov_immo/pages/sell/components/miscellaeneous/separator.dart';
import 'package:ynov_immo/pages/sell/components/style/common_style.dart';

class PropertySell extends StatefulWidget {
  final Function(String, dynamic) setParentState;

  const PropertySell({Key key, this.setParentState}) : super(key: key);

  @override
  _PropertySellState createState() => _PropertySellState();
}

class _PropertySellState extends State<PropertySell> {
  final RegExp decimalRegex = RegExp(r'(^\d*)');

  bool garden = false;
  bool exposedStone = false;
  bool cimentTiles = false;
  bool parquetFloor = false;
  String selectedType;
  String nbPiece;
  String nbChambre;
  String selectedEnergie;
  String selectedGes;
  List<String> type = [
    'apartment',
    'house',
    'vacant_lot',
    'parking',
    'loft',
    'castle',
    'building'
  ];
  List<String> energie = ['A', 'B', 'C', 'D', 'E', 'F', 'G'];
  List<String> ges = ['A', 'B', 'C', 'D', 'E', 'F', 'G'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 0.0),
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(
                  value: garden,
                  onChanged: (newValue) {
                    setState(() {
                      garden = newValue;
                    });
                    widget.setParentState(SellFormFields.GARDEN, garden);
                  }),
              Text(
                "Jardin",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black, fontFamily: 'RobotoMono'),
              ),
              SeparatorHorizontal(),
              Checkbox(
                  value: exposedStone,
                  onChanged: (newValue) {
                    setState(() {
                      exposedStone = newValue;
                    });
                    widget.setParentState(
                        SellFormFields.EXPOSED_STONE, exposedStone);
                  }),
              Text(
                "Pierres Apparentes",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black, fontFamily: 'RobotoMono'),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: cimentTiles,
                  onChanged: (newValue) {
                    setState(() {
                      cimentTiles = newValue;
                    });
                    widget.setParentState(
                        SellFormFields.CIMENT_TILES, cimentTiles);
                  }),
              Text(
                "Carreaux de ciments",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black, fontFamily: 'RobotoMono'),
              ),
              SeparatorHorizontal(),
              Checkbox(
                  value: parquetFloor,
                  onChanged: (newValue) {
                    setState(() {
                      parquetFloor = newValue;
                    });
                    widget.setParentState(
                        SellFormFields.PARQUET_FLOOR, parquetFloor);
                  }),
              Text(
                "Parquet",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black, fontFamily: 'RobotoMono'),
              ),
            ],
          ),
          DropdownButton(
            hint: Text(
              'Choisissez le type de votre bien',
              style: TextStyle(fontFamily: 'RobotoMono'),
            ),
            value: selectedType,
            onChanged: (newValue) {
              setState(() {
                selectedType = newValue;
              });
              widget.setParentState(SellFormFields.TYPE, selectedType);
            },
            items: type.map((t) {
              return DropdownMenuItem(
                child: new Text(t),
                value: t,
              );
            }).toList(),
          ),
          Separator(),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
            child: Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 160,
                    child: TextField(
                      decoration: CommonStyle.textFieldDecoration("Nb Pièces"),
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(decimalRegex)
                      ],
                      // controller: catchPhraseController,
                      onChanged: (newValue) {
                        setState(() {
                          nbPiece = newValue;
                        });
                      },
                    ),
                  ),
                  SeparatorHorizontal(),
                  SizedBox(
                    width: 180,
                    child: TextField(
                      decoration:
                          CommonStyle.textFieldDecoration("Nb Chambres"),
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(decimalRegex)
                      ],
                      // controller: catchPhraseController,
                      onChanged: (newValue) {
                        setState(() {
                          nbChambre = newValue;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                DropdownButton(
                  hint: Text(
                    'Classe Energie',
                    style: TextStyle(fontFamily: 'RobotoMono'),
                  ),
                  value: selectedEnergie,
                  onChanged: (newValue) {
                    setState(() {
                      selectedEnergie = newValue;
                    });
                    widget.setParentState(
                        SellFormFields.ENERGIE, selectedEnergie);
                  },
                  items: energie.map((g) {
                    return DropdownMenuItem(
                      child: new Text(g),
                      value: g,
                    );
                  }).toList(),
                ),
                SeparatorHorizontal(),
                DropdownButton(
                  hint: Text(
                    'Classe GES',
                    style: TextStyle(fontFamily: 'RobotoMono'),
                  ),
                  value: selectedGes,
                  onChanged: (newValue) {
                    setState(() {
                      selectedGes = newValue;
                    });
                    widget.setParentState(SellFormFields.GES, selectedGes);
                  },
                  items: ges.map((g) {
                    return DropdownMenuItem(
                      child: new Text(g),
                      value: g,
                    );
                  }).toList(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
