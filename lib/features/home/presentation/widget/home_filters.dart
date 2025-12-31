import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:agrobridge_mobile/features/home/application/filter_category_enum.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeCategoryFilters extends ConsumerWidget {
  const HomeCategoryFilters({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 8,
        children: [_filterButton(false, filterkey: FilterCategory.cashCrop)],
      ),
    );
  }

  /// `Note`: U can convert the _filterButton to only take the filterkey
  /// and it can determine that from the provider holding the data to know if its active

  Widget _filterButton(bool isActive, {required FilterCategory filterkey}) {
    return GestureDetector(
      onTap: () {}, // ! Use the filter category to find the taped button
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
          color: isActive ? Color(0xFF1E5925) : Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: !isActive ? Color(0xFFF5F5F7) : Colors.transparent,
          ),
        ),
        child: Text(filterkey.label, style: AppFonts.openSans),
      ),
    );
  }
}
