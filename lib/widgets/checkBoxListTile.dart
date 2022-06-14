import 'package:flutter/material.dart';
import 'package:taska/widgets/text_widgets.dart';


class TodaysTask extends StatelessWidget {
  const TodaysTask({
    Key? key,
    required checked,
    required this.time,
  })  : _checked = checked,
        super(key: key);

  final _checked;
  final String time;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      autofocus: true,
      value: _checked != 1.0,
      title: MediumSizedText(text: 'Go gishing \n$time'),
      secondary: const Icon(
        Icons.cloud_circle,
      ),
      onChanged: (bool? value) {},
    );
  }
}
