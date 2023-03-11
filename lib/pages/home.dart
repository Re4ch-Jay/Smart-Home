import 'package:flutter/material.dart';
import '../utils.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/smart_device_card.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSelectedLight = true;
  bool isSelectedAC = false;
  bool isSelectedTV = false;
  bool isSelectedFan = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomAppBar(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Welcome Home,",
              style: kTextSmall,
            ),
            const Text(
              "Reach",
              style: kTextLarge,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Smart Devices",
              style: kTextMeduim,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: SmartDeviceCard(
                      imageColor:
                          isSelectedLight ? Colors.white : Colors.grey.shade700,
                      boxDecoration: isSelectedLight
                          ? kBoxDecorationSelected
                          : kBoxDecorationUnselected,
                      image: 'images/light-bulb.png',
                      text: 'Smart Light',
                      value: isSelectedLight,
                      onChanged: (bool value) {
                        setState(() {
                          isSelectedLight = value;
                        });
                      },
                      textStyle: isSelectedLight
                          ? kTextLabelSelected
                          : kTextLabelUnselected,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: SmartDeviceCard(
                      imageColor:
                          isSelectedAC ? Colors.white : Colors.grey.shade700,
                      boxDecoration: isSelectedAC
                          ? kBoxDecorationSelected
                          : kBoxDecorationUnselected,
                      image: 'images/air-conditioner.png',
                      text: 'Smart AC',
                      value: isSelectedAC,
                      textStyle: isSelectedAC
                          ? kTextLabelSelected
                          : kTextLabelUnselected,
                      onChanged: (bool value) {
                        setState(() {
                          isSelectedAC = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: SmartDeviceCard(
                      imageColor:
                          isSelectedTV ? Colors.white : Colors.grey.shade700,
                      boxDecoration: isSelectedTV
                          ? kBoxDecorationSelected
                          : kBoxDecorationUnselected,
                      image: 'images/smart-tv.png',
                      text: 'Smart TV',
                      value: isSelectedTV,
                      textStyle: isSelectedTV
                          ? kTextLabelSelected
                          : kTextLabelUnselected,
                      onChanged: (value) {
                        setState(() {
                          isSelectedTV = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: SmartDeviceCard(
                      imageColor:
                          isSelectedFan ? Colors.white : Colors.grey.shade700,
                      boxDecoration: isSelectedFan
                          ? kBoxDecorationSelected
                          : kBoxDecorationUnselected,
                      image: 'images/fan.png',
                      text: 'Smart Fan',
                      value: isSelectedFan,
                      textStyle: isSelectedFan
                          ? kTextLabelSelected
                          : kTextLabelUnselected,
                      onChanged: (value) {
                        setState(() {
                          isSelectedFan = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
