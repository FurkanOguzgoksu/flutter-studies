class Book {
  final int? id;
  final String? selfLink;
  final VolumeInfo? volumeInfo;

  Book({this.id, this.selfLink, this.volumeInfo});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      selfLink: json['selfLink'],
      volumeInfo: json['volumeInfo'] != null
          ? VolumeInfo.fromJson(json['volumeInfo'])
          : null,
    );
  }
}

class VolumeInfo {
  final String? title;
  final List<String>? authors;

  VolumeInfo({this.title, this.authors});

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      authors: json['authors'] != null
          ? List<String>.from(json['authors'])
          : null,
    );
  }
}
