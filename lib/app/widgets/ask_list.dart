import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacker_news/app/modules/home/controllers/home_controller.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class AsksList extends GetView<HomeController> {
  const AsksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.asks.isEmpty
          ? Center(
              child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Iconsax.user_octagon),
                  label: const Text(
                    'Nobody has asked anything yet.',
                    overflow: TextOverflow.clip,
                    style: TextStyle(color: Colors.white),
                  )),
            )
          : ListView.builder(
              shrinkWrap: true,
              itemCount: controller.asks.length,
              itemBuilder: (c, i) {
                final ask = controller.asks.elementAt(i);
                return ListTile(
                  leading: const Icon(Iconsax.status_up),
                  title: Text('${ask.title}'),
                  subtitle: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Iconsax.user),
                      label: Text('${ask.by}')),
                  trailing: Text(
                    DateFormat.yMMMEd().format(
                      DateTime.fromMillisecondsSinceEpoch(ask.time! * 1000),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
