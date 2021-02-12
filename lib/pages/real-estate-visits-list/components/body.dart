import 'package:flutter/material.dart';
import 'package:ynov_immo/api.dart';
import 'package:ynov_immo/pages/real-estate-visits-list/components/fake_api.dart';
import 'package:ynov_immo/pages/real-estate-visits-list/components/visit_item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VisitsList();
  }
}

class VisitsList extends StatefulWidget {
  _VisitsListState createState() => _VisitsListState();
}

class _VisitsListState extends State<VisitsList> {
  List<Widget> visitsOfTheDayWidgets = [];
  List<Widget> oldVisitsWidgets = [];

  @override
  initState() {
    super.initState();
    _getData();
  }

  Widget build(BuildContext context) {
    if (visitsOfTheDayWidgets == null && oldVisitsWidgets == null) {
      return CircularProgressIndicator();
    } else {
      return RefreshIndicator(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  visitsOfTheDayWidgets.isNotEmpty
                      ? "Visites du jour :"
                      : "Aucune Visite aujourd'hui",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  children: visitsOfTheDayWidgets,
                ),
                Text(
                  "Anciennes Visites :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  children: oldVisitsWidgets,
                ),
              ],
            ),
          ),
        ),
        onRefresh: _getData,
      );
    }
  }

  Future<void> _getData() async {
    int authenticatedUserId = 8;
    // futureRealEstateVisits = fetchRealEstateVisits(authenticatedUserId);
    var realEstateVisits = fetchRealEstateVisitsFake(authenticatedUserId);
    loadVisitsOfTheDay(realEstateVisits);
    loadOldVisits(realEstateVisits);
  }

  loadVisitsOfTheDay(List<RealEstateVisit> realEstateVisits) async {
    var apiInstance = new RealEstateApi();
    List<Widget> visitsItems = [];
    DateTime now = new DateTime.now();
    List<RealEstateVisit> visitsOfTheDay = (realEstateVisits
        .where((visit) => isSameDate(visit.startDate, now))).toList();
    for (RealEstateVisit visit in visitsOfTheDay) {
      try {
        var realEstate = await apiInstance.realEstateIdGet(visit.idRealEstate);
        visitsItems.add(VisitItem(
            index: visit.id,
            isToday: true,
            realEstateId: realEstate.id,
            accroche: realEstate.accroche,
            city: realEstate.city,
            startTime: visit.startTime,
            endTime: visit.endTime,
            hasGarden: realEstate.hasGarden == 0 ? false : true,
            hasExposedStone: realEstate.hasExposedStone == 0 ? false : true,
            hasCimentTiles: realEstate.hasCimentTiles == 0 ? false : true,
            hasParquetFloor: realEstate.hasParquetFloor == 0 ? false : true));
      } catch (e) {
        print("Exception when calling RealEstateApi->realEstateIdGet: $e\n");
      }
    }
    setState(() {
      visitsOfTheDayWidgets = visitsItems;
    });
  }

  loadOldVisits(List<RealEstateVisit> realEstateVisits) async {
    var apiInstance = new RealEstateApi();
    List<Widget> visitsItems = [];
    DateTime now = DateTime.now();
    DateTime today = DateTime(now.year, now.month, now.day, 0, 0, 0);
    List<RealEstateVisit> oldVisits = (realEstateVisits
        .where((visit) => visit.startDate.isBefore(today))).toList();
    for (RealEstateVisit visit in oldVisits) {
      try {
        var realEstate = await apiInstance.realEstateIdGet(visit.idRealEstate);
        visitsItems.add(VisitItem(
            index: visit.id,
            isToday: false,
            realEstateId: realEstate.id,
            accroche: realEstate.accroche,
            city: realEstate.city,
            startTime: visit.startTime,
            endTime: visit.endTime,
            hasGarden: realEstate.hasGarden == 0 ? false : true,
            hasExposedStone: realEstate.hasExposedStone == 0 ? false : true,
            hasCimentTiles: realEstate.hasCimentTiles == 0 ? false : true,
            hasParquetFloor: realEstate.hasParquetFloor == 0 ? false : true));
      } catch (e) {
        print("Exception when calling RealEstateApi->realEstateIdGet: $e\n");
      }
    }

    setState(() {
      oldVisitsWidgets = visitsItems;
    });
  }
}

bool isSameDate(DateTime date1, DateTime date2) {
  return date1.year == date2.year &&
      date1.month == date2.month &&
      date1.day == date2.day;
}

Future<RealEstateVisit> fetchRealEstateVisits(int authenticatedUserId) async {
  var apiInstance = new RealEstateVisitApi();
  try {
    var visits = await apiInstance
        .realEstateVisitGet(where: ["idBooker:$authenticatedUserId"]);
    for (var visit in visits) {
      print(visit);
    }
  } catch (e) {
    print(
        "Exception when calling RealEstateVisitApi->realEstateVisitGet: $e\n");
  }
}

List<RealEstateVisit> fetchRealEstateVisitsFake(int authenticatedUserId) {
  var apiInstance = new FakeApi();
  return apiInstance.realEstatesVisits
      .where((visit) => visit.idBooker == authenticatedUserId)
      .toList();
}
