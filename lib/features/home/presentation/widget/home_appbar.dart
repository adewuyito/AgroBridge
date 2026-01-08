import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:agrobridge_mobile/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeAppbar extends ConsumerWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double topPadding = MediaQuery.paddingOf(context).top;
    return Padding(
      padding: EdgeInsets.only(top: topPadding, left: 18, right: 18),
      child: Row(
        spacing: 10,
        children: [
          // ~ Profile Image
          CircleAvatar(),

          // ~ Location
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Hello `Name`",
                style: AppFonts.openSans.semiBold16.withColor(
                  Color.fromRGBO(65, 70, 82, 1),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.icons.mapPin.svg(),
                  Text(
                    "Kaduna, Nigeria.",
                    style: AppFonts.openSans.withColor(
                      Color.fromRGBO(65, 70, 82, 1),
                    ),
                  ),
                ],
              ),
            ],
          ),

          Spacer(),

          // ~ User notification
          GestureDetector(
            onTap: () {},
            child: Assets.icons.notificationBell.svg(),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class PinnedSearchBarAppState extends StatelessWidget {
  const PinnedSearchBarAppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: const Color(0xff6750a4)),
      home: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                clipBehavior: Clip.none,
                shape: const StadiumBorder(),
                scrolledUnderElevation: 0.0,
                titleSpacing: 0.0,
                backgroundColor: Colors.transparent,
                floating:
                    true, // We can also uncomment this line and set `pinned` to true to see a pinned search bar.
                title: SearchAnchor.bar(
                  suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                        return List<Widget>.generate(5, (int index) {
                          return ListTile(
                            titleAlignment: ListTileTitleAlignment.center,
                            title: Text('Initial list item $index'),
                          );
                        });
                      },
                ),
              ),
              // The listed items below are just for filling the screen
              // so we can see the scrolling effect.
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    height: 100.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 100.0,
                          child: Card(
                            child: Center(child: Text('Card $index')),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 1000,
                    color: Colors.deepPurple.withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeAppbarSliver extends StatelessWidget {
  const HomeAppbarSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: const Color(0xff6750a4)),
      home: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                clipBehavior: Clip.none,
                shape: const StadiumBorder(),
                scrolledUnderElevation: 0.0,
                titleSpacing: 0.0,
                backgroundColor: Colors.transparent,
                // We can also uncomment this line and set `pinned` to true to see a pinned search bar.
                floating: true,
                title: SearchAnchor.bar(
                  suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                        return List<Widget>.generate(5, (int index) {
                          return ListTile(
                            titleAlignment: ListTileTitleAlignment.center,
                            title: Text('Initial list item $index'),
                          );
                        });
                      },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
