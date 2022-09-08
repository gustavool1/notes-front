class Note {
  String word;
  String? present;
  String? past;
  String? phrase;
  String? userId;

  Note({
    required this.word,
    this.present,
    this.past,
    this.phrase,
    this.userId,
  });

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      word: map["word"],
      present: map["present"],
      past: map["past"],
      userId: map["userId"],
    );
  }
}
