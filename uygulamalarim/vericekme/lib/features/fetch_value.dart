class FetchValue<T> {
  final int? page;
  final int? totalPages;
  final bool? previousPage;
  final bool? nextPage;
  final List<T>? items;

  FetchValue({
    required this.page,
    required this.totalPages,
    required this.previousPage,
    required this.nextPage,
    required this.items,
  });

  factory FetchValue.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    return FetchValue<T>(
      page: json['page'],
      totalPages: json['totalPages'],
      previousPage: json['previousPage'],
      nextPage: json['nextPage'],
      items: (json['data'] as List).map((e) => fromJson(e)).toList(),
    );
  }
}
