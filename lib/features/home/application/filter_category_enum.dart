enum FilterCategory {
  grain(label: "Grains"),
  cashCrop(label: "Cash Crops");

  final String label;

  const FilterCategory({required this.label});
}
