class Epub {
  bool? isAvailable;
  String? acsTokenLink;

  Epub({this.isAvailable, this.acsTokenLink});

  factory Epub.fromJson(Map<String, dynamic> json) => Epub(
        isAvailable: json['isAvailable'] as bool?,
        acsTokenLink: json['acsTokenLink'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'isAvailable': isAvailable,
        'acsTokenLink': acsTokenLink,
      };

  Epub copyWith({
    bool? isAvailable,
    String? acsTokenLink,
  }) {
    return Epub(
      isAvailable: isAvailable ?? this.isAvailable,
      acsTokenLink: acsTokenLink ?? this.acsTokenLink,
    );
  }
}
