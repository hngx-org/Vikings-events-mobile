import 'package:flutter/material.dart';

import '../../../core/constants/env_dimensions.dart';

class EventTab extends StatefulWidget {
  const EventTab({super.key});

  @override
  State<EventTab> createState() => _EventTabState();
}

class _EventTabState extends State<EventTab> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected; // Toggle the selection state
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isSelected ? Colors.grey.shade500 : Colors.grey.shade300,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Friends',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              width: EnvDimension.xxSmall,
            ),
            Text(
              'Everyone',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
