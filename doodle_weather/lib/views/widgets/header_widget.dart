import 'package:doodle_weather/controllers/global_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';

/// This Widget displays information about the current location thanks to geocoding package:
class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  String city = "";

  final GlobalController globalController = Get.put(GlobalController(), permanent: true);

  @override
  void initState() {
    getAddress(globalController.fetchLatitude().value, globalController.fetchLongitude().value);
    super.initState();
  }

  getAddress(lat, lon) async {
    List<Placemark> placemark = await placemarkFromCoordinates(lat, lon);
    Placemark place = placemark[0];
    setState(() {
      city = place.locality!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 4),
          alignment: Alignment.center,
          child: Text(
            city,
            style: const TextStyle(fontSize: 20, color: CupertinoColors.systemGrey, height: 1.5),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: CupertinoColors.black,
          ),
          child: const SizedBox(
            width: 20,
            height: 5,
          ),
        ),
      ],
    );
  }
}