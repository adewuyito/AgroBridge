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
      physics: AlwaysScrollableScrollPhysics(),
      child: Row(
        spacing: 8,
        children: [
          const SizedBox(width: 10),
          _filterButton(true, filterkey: FilterCategory.cashCrop),
          _filterButton(false, filterkey: FilterCategory.cashCrop),
          _filterButton(false, filterkey: FilterCategory.cashCrop),
          _filterButton(false, filterkey: FilterCategory.cashCrop),
          _filterButton(false, filterkey: FilterCategory.cashCrop),
          const SizedBox(width: 10),
        ],
      ),
    );
  }

  /// `Note`: U can convert the _filterButton to only take the filterkey
  /// and it can determine that from the provider holding the data to know if its active

  Widget _filterButton(bool isActive, {required FilterCategory filterkey}) {
    return GestureDetector(
      onTap: () {}, // ! Use the filter category to find the taped button
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isActive ? Color(0xFF1E5925) : Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: !isActive ? Color(0xFFF5F5F7) : Colors.transparent,
          ),
        ),
        child: Text(
          filterkey.label,
          style: AppFonts.openSans.withColor(
            isActive ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

class ChoiceChipExample extends StatefulWidget {
  const ChoiceChipExample({super.key});

  @override
  State<ChoiceChipExample> createState() => _ChoiceChipExampleState();
}

class _ChoiceChipExampleState extends State<ChoiceChipExample> {
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Row(
          children: List<Widget>.generate(8, (int index) {
            return Padding(
              padding: EdgeInsets.only(right: index < 7 ? 10.0 : 0),
              child: ChoiceChip(
                label: Text(
                  'Option $index',
                  style: AppFonts.openSans.withColor(
                    _value == index ? Colors.white : Colors.black,
                  ),
                ),
                selected: _value == index,
                onSelected: (bool selected) {
                  setState(() {
                    _value = selected ? index : null;
                  });
                },
                selectedColor: Color(0xFF1E5925),
                backgroundColor: Colors.white,
                side: BorderSide(color: Color(0xFFF5F5F7), width: 1.0),
                showCheckmark: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
