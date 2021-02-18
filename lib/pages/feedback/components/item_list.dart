import 'package:flutter/material.dart';
import '../../../api.dart';

class ItemList extends StatelessWidget {

  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Future<List<RealEstateFeedbackPagination>> getFeedbacks() async {

      try {
        RealEstateFeedbackApi apiInstance = new RealEstateFeedbackApi();
        Future<List<RealEstateFeedbackPagination>> feedbacks = apiInstance.realEstateFeedbackGet();
        print(feedbacks);
        return feedbacks;

      } on Exception {
          throw Exception('No Internet connection');
      }

    }

    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
                child: Container(
                  height: 200,
                  child: FutureBuilder<List<RealEstateFeedbackPagination>>(
                    future: getFeedbacks(),
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.none:
                          return Text('Failed connection API');
                        case ConnectionState.waiting:
                          return new Text('Wait...');
                        case ConnectionState.done:
                          if (snapshot.hasData) {
                            if (snapshot.data != null) {
                              return PageView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 5,
                                itemBuilder: (BuildContext context, index) {
                                  return Card(
                                    child: Text(snapshot.data.toString()),
                                  );
                                },
                              );
                            }
                          }
                          break;
                        case ConnectionState.active:
                      }

                      // By default, show a loading spinner.
                      return CircularProgressIndicator();
                    },
                  ),
                )
            ),
            Container(
              // margin: EdgeInsets.only(right: 10.0),
              child: new RaisedButton.icon(
                onPressed: () {},
                label: Text('Voir plus'),
                icon: Icon(Icons.navigate_next),
              ),
              alignment: Alignment.bottomCenter,
            )
          ],
        ),
      )
    );
  }
}
