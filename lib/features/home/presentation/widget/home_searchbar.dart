import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:agrobridge_mobile/features/home/presentation/widget/home_search_filter_bottom_sheet.dart';
import 'package:agrobridge_mobile/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeSearchbar extends ConsumerWidget {
  final TextEditingController inputController;
  const HomeSearchbar({super.key, required this.inputController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      controller: inputController,
      decoration: InputDecoration(
        hintText: "Search by product name or category",
        hintStyle: AppFonts.openSans.regular12.withColor(
          const Color.fromRGBO(17, 24, 39, 1),
        ),
        prefixIcon: Assets.icons.inputFieldPrefix.svg(),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                elevation: 1,
                context: context,
                builder: (context) {
                  return DraggableScrollableSheet(
                    initialChildSize: 0.8,
                    minChildSize: 0.2,
                    maxChildSize: 0.9,
                    expand: false,
                    builder: (context, index) => HomeSearchFilterBottomSheet(),
                  );
                },
              );
            },
            child: Assets.icons.inputFieldSuffix.svg(),
          ),
        ),
      ),
    );
  }
}
