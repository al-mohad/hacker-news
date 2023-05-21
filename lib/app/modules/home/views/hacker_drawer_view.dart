import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HackerDrawerView extends GetView {
  const HackerDrawerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            arrowColor: Colors.amber,
            accountName: Text(
              'Hacker News',
              style: GoogleFonts.sourceCodePro(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              'info@hackernews.io',
              style: GoogleFonts.inconsolata(
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Iconsax.message_question),
            title: Text(
              'Ask Stories',
              style: GoogleFonts.robotoMono(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Iconsax.user_tag),
            title: Text(
              'Jobs Stories',
              style: GoogleFonts.robotoMono(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Iconsax.trend_up),
            title: Text(
              'Trending',
              style: GoogleFonts.robotoMono(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
