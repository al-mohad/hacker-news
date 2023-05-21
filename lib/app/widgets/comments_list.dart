import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacker_news/app/modules/home/controllers/home_controller.dart';
import 'package:iconsax/iconsax.dart';

import 'comment_tile.dart';

class CommentsList extends GetView<HomeController> {
  const CommentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.comments.isEmpty
          ? Center(
              child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Iconsax.message_add),
                  label: const Text(
                    'add a comment',
                    overflow: TextOverflow.clip,
                    style: TextStyle(color: Colors.white),
                  )),
            )
          : ListView.builder(
              shrinkWrap: true,
              itemCount: controller.comments.length,
              itemBuilder: (c, i) {
                final comment = controller.comments.elementAt(i);

                return CommentTile(comment: comment);
              }),
    );
  }
}
