import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacker_news/app/modules/home/controllers/home_controller.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class PollsList extends GetView<HomeController> {
  const PollsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.polls.isEmpty
          ? Center(
              child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Iconsax.box_remove),
                  label: const Text(
                    'No Polls',
                    overflow: TextOverflow.clip,
                    style: TextStyle(color: Colors.white),
                  )),
            )
          : ListView.builder(
              shrinkWrap: true,
              itemCount: controller.polls.length,
              itemBuilder: (c, i) {
                final poll = controller.polls.elementAt(i);
                return ListTile(
                  leading: const Icon(Iconsax.status_up),
                  title: Text('${poll.title}'),
                  subtitle: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Iconsax.user),
                      label: Text('${poll.by}')),
                  trailing: Text(
                    DateFormat.yMMMEd().format(
                      DateTime.fromMillisecondsSinceEpoch(poll.time! * 1000),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
