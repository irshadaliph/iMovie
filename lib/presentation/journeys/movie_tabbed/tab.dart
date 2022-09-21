// ignore_for_file: unnecessary_null_comparison

class Tab {
  final int index;
  final String title;

  const Tab({
    required this.index,
    required this.title,
  })  : assert(index >= 0, 'index cannot be negative'),
        assert(title != null, 'title cannot be null');
}
