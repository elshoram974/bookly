class SearchInfo {
  String? textSnippet;

  SearchInfo({this.textSnippet});

  factory SearchInfo.fromJson(Map<String, dynamic> json) => SearchInfo(
        textSnippet: json['textSnippet'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'textSnippet': textSnippet,
      };

  SearchInfo copyWith({
    String? textSnippet,
  }) {
    return SearchInfo(
      textSnippet: textSnippet ?? this.textSnippet,
    );
  }
}
