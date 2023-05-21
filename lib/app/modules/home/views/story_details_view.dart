import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hacker_news/app/modules/home/controllers/home_controller.dart';
import 'package:hacker_news/app/widgets/ask_list.dart';
import 'package:hacker_news/app/widgets/polls_list.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

import '../../../globals/utils.dart';
import '../../../widgets/comments_list.dart';
import '../../../widgets/stories_loading_shimmer.dart';

class StoryDetailsView extends GetView<HomeController> {
  const StoryDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //
    //   body: SingleChildScrollView(
    //     physics: const BouncingScrollPhysics(),
    //     child: DefaultTabController(
    //       length: 3,
    //       child: Padding(
    //         padding: const EdgeInsets.symmetric(horizontal: 16),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //
    //
    //             if (controller.selectedStory?.text != null)
    //               Text(cleanText('${controller.selectedStory?.text}')),
    //             const SizedBox(height: 8),
    //             TabBar(
    //               unselectedLabelColor: Colors.redAccent,
    //               indicatorPadding: const EdgeInsets.only(left: 2, right: 2),
    //               indicator: ShapeDecoration(
    //                 color: Colors.blueGrey,
    //                 shape: BeveledRectangleBorder(
    //                   borderRadius: BorderRadius.circular(20),
    //                   side: const BorderSide(
    //                     color: Colors.green,
    //                   ),
    //                 ),
    //               ),
    //               tabs: const [
    //                 Tab(
    //                   child: Align(
    //                     alignment: Alignment.center,
    //                     child: Text("Comments"),
    //                   ),
    //                 ),
    //                 Tab(
    //                   child: Align(
    //                     alignment: Alignment.center,
    //                     child: Text("Polls"),
    //                   ),
    //                 ),
    //                 Tab(
    //                   child: Align(
    //                     alignment: Alignment.center,
    //                     child: Text("GAMES"),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             const SizedBox(height: 8),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                forceElevated: innerBoxIsScrolled,
                title: Text(
                  'Hacker News',
                  style: GoogleFonts.sourceCodePro(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: false,
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Iconsax.bookmark),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.more_2,
                      )),
                ],
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      DefaultTextStyle(
                        style: const TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                        child: Text('${controller.selectedStory?.title}')
                            .animate()
                            .slideY(
                                duration: 900.ms, curve: Curves.easeOutCubic)
                            .fadeIn(),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Iconsax.clock),
                        label: Text(
                          '${DateFormat.H().format(
                            DateTime.fromMillisecondsSinceEpoch(
                              controller.selectedStory!.time * 1000,
                            ),
                          )}hrs ago',
                        ),
                      ),
                      const SizedBox(height: 16),
                      Obx(
                        () => controller.author == null
                            ? userShimmer()
                            : authorTile(author: controller.author!),
                      ),
                      const SizedBox(height: 8),
                      FittedBox(
                        child: Row(
                          children: [
                            TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(Iconsax.message),
                              label: const Text('Comment'),
                            ),
                            TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(Iconsax.like),
                              label: const Text('Vote'),
                            ),
                            TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(Iconsax.share),
                              label: const Text('Share'),
                            ),
                          ],
                        ),
                      ),
                      if (controller.selectedStory?.text != null)
                        Text(cleanText('${controller.selectedStory?.text}')),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, int index) {
                    return const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TabBar(
                          labelColor: Colors.green,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.blueGrey,
                          indicatorWeight: 4,
                          indicatorPadding:
                              EdgeInsets.symmetric(horizontal: 16),
                          labelPadding: EdgeInsets.zero,
                          tabs: [
                            Text("Comments"),
                            Text("Polls"),
                            Text("Asks"),
                          ],
                        )
                      ],
                    );
                  },
                  childCount: 1,
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: <Widget>[
              CommentsList(),
              PollsList(),
              AsksList(),
            ],
          ),
        ),
      ),
    );
  }
}
