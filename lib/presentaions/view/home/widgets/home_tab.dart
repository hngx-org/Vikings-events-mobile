import 'package:event_app/core/constants/env_colors.dart';
import 'package:event_app/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EventTab extends HookWidget {
  const EventTab({super.key});

  @override
  Widget build(BuildContext context) {
    final tab = useState(0);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: EnvColors.mildGrey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => tab.value = 1,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: tab.value == 1 ? Colors.white : EnvColors.mildGrey,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Friends',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
          6.wi,
          GestureDetector(
            onTap: () => tab.value = 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: tab.value == 2 ? Colors.white : EnvColors.mildGrey,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              child: Text(
                'Everyone',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
