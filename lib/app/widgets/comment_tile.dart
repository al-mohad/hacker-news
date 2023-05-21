import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

import '../data/models/comment/comment.dart';
import '../globals/utils.dart';

class CommentTile extends StatelessWidget {
  const CommentTile({
    super.key,
    required this.comment,
  });

  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Iconsax.user),
              label: Text(
                '${comment.by}',
                overflow: TextOverflow.clip,
                style: const TextStyle(color: Colors.white),
              )),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Iconsax.messages),
              label: Text(
                '${comment.kids?.length ?? 0}',
                overflow: TextOverflow.clip,
                style: const TextStyle(color: Colors.white),
              )),
          if (comment.created != null)
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Iconsax.calendar),
                label: Text(
                  DateFormat.yMMMEd().format(
                    DateTime.fromMillisecondsSinceEpoch(
                        comment.created! * 1000),
                  ),
                  overflow: TextOverflow.clip,
                  style: const TextStyle(color: Colors.white),
                )),
        ],
      ),
      subtitle: Text(cleanText('${comment.text}')),
    )
        .animate(delay: 500.ms)
        .fadeIn(duration: 900.ms, delay: 300.ms)
        .shimmer(
          blendMode: BlendMode.srcOver,
          color: Colors.white12,
        )
        .move(
          begin: const Offset(16, 0),
          curve: Curves.easeOutQuad,
        );
  }
}
