import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hacker_news/app/data/models/author/author.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class StoriesLoadingShimmer extends StatelessWidget {
  const StoriesLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 12,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (c, i) => ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.green),
        ),
        title: Container(
          height: 10,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.green,
          ),
        ),
        subtitle: Row(
          children: [
            Container(
              height: 10,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: 10,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ],
        ),
        trailing: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      )
          .animate(
            onPlay: (controller) => controller.repeat(reverse: true),
          )
          .shimmer(
            duration: 1200.ms,
            color: Colors.white,
          ),
    );
  }
}

userShimmer() => ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.green),
      ),
      title: Container(
        height: 10,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green,
        ),
      ),
      subtitle: Row(
        children: [
          Container(
            height: 10,
            width: 90,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            height: 10,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
      ),
      trailing: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    )
        .animate(
          onPlay: (controller) => controller.repeat(reverse: true),
        )
        .shimmer(
          duration: 1200.ms,
          color: Colors.white,
        );

authorTile({required Author author}) => SizedBox(
      height: 70,
      child: Row(children: [
        Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: TextButton.icon(
                    onPressed: null,
                    icon: const Icon(Iconsax.user),
                    label: Text('${author.id}'),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
                  ),
                ),
                if (author.about != null)
                  Flexible(
                    child: TextButton.icon(
                      onPressed: null,
                      icon: const Icon(Iconsax.security_user),
                      label: Text('${author.about}'),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                      ),
                    ),
                  ),
                Flexible(
                  child: TextButton.icon(
                    onPressed: null,
                    icon: const Icon(Iconsax.calendar),
                    label: Text(
                      DateFormat.yMMMEd().format(
                        DateTime.fromMillisecondsSinceEpoch(
                          author.created! * 1000,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
                  ),
                )
              ],
            )),
        Expanded(
            child: Column(
          children: [
            Flexible(
              child: TextButton.icon(
                onPressed: null,
                icon: const Icon(
                  Iconsax.medal,
                  color: Colors.amber,
                ),
                label: Text('${author.karma}'),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
              ),
            ),
            Flexible(
              child: TextButton.icon(
                onPressed: null,
                icon: const Icon(
                  Iconsax.messages,
                  color: Colors.blueGrey,
                ),
                label: Text('${author.submitted?.length}'),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
              ),
            )
          ],
        )),
      ]),
    ).animate().slideY(duration: 900.ms, curve: Curves.easeOutCubic).fadeIn();
