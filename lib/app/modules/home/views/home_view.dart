import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hacker_news/app/data/enums/states.dart';
import 'package:hacker_news/app/modules/home/views/hacker_drawer_view.dart';
import 'package:intl/intl.dart';

import '../../../widgets/stories_loading_shimmer.dart';
import '../../../widgets/story_tile.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const HackerDrawerView(),
      appBar: AppBar(
        title: Text(
          'Hacker News',
          style: GoogleFonts.sourceCodePro(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: const [
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(
          //     Iconsax.refresh,
          //     color: Colors.green,
          //   ),
          // )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: controller.storiesCategory.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (c, i) {
                String cat = controller.storiesCategory.elementAt(i);
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Obx(
                    () => controller.viewState == ViewState.busy
                        ? const SizedBox.shrink()
                        : GestureDetector(
                            onTap: () =>
                                controller.changeSelectedStoryCategory(cat),
                            child: Chip(
                              avatar: const Icon(Icons.newspaper),
                              label: Text(
                                '${cat.capitalizeFirst} Stories',
                                style: GoogleFonts.anonymousPro(
                                  color: Colors.white,
                                ),
                              ),
                              backgroundColor:
                                  controller.selectedStoriesCategory == cat
                                      ? Colors.green
                                      : Colors.blueGrey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          )
                      ..animate().fade(duration: 500.ms).scale(delay: 500.ms),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Obx(
              () => controller.viewState == ViewState.busy
                  ? const StoriesLoadingShimmer()
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.stories.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (c, i) {
                        if (i == controller.stories.length) {
                          return const StoriesLoadingShimmer();
                        }

                        final story = controller.stories.elementAt(i);
                        DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(
                          story.time * 1000,
                        );
                        String formattedTime = DateFormat.H().format(dateTime);
                        return StoryTile(
                          story: story,
                          formattedTime: formattedTime,
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
