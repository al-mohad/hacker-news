import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hacker_news/app/modules/home/controllers/home_controller.dart';
import 'package:iconsax/iconsax.dart';

import '../data/models/story/story.dart';

class StoryTile extends GetView<HomeController> {
  const StoryTile({
    super.key,
    required this.story,
    required this.formattedTime,
  });

  final Story story;
  final String formattedTime;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => controller.fetchStoryDetails(story: story),
      leading: Column(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.green,
            child: Icon(Iconsax.trend_up),
          ),
          Text(
            '${story.score}',
            style: GoogleFonts.anonymousPro(
              color: Colors.grey,
            ),
          ),
        ],
      ),
      title: Text(
        story.title,
        style: GoogleFonts.nunito(),
      ),
      subtitle: Row(
        children: [
          const Icon(Iconsax.user, color: Colors.grey, size: 16),
          const SizedBox(width: 8),
          Text(
            story.by,
            style: GoogleFonts.anonymousPro(
              color: Colors.grey,
            ),
          ),
          const Spacer(),
          const Icon(Iconsax.clock, color: Colors.grey, size: 16),
          const SizedBox(width: 4),
          Text(
            '${formattedTime}hrs',
            style: GoogleFonts.anonymousPro(
              color: Colors.grey,
            ),
          ),
        ],
      ),
      trailing: Column(
        children: [
          const Flexible(
              child: Icon(
            Iconsax.messages,
            color: Colors.green,
          )),
          Text(
            '${story.kids?.length ?? 0}',
            style: GoogleFonts.sourceCodePro(
              color: Colors.green,
            ),
          ),
        ],
      ),
    )
        .animate(delay: 600.ms)
        .fadeIn(duration: 900.ms, delay: 300.ms)
        .shimmer(
          blendMode: BlendMode.srcOver,
          color: Colors.white12,
        )
        .move(
          begin: const Offset(-16, 0),
          curve: Curves.easeOutQuad,
        );
  }
}
