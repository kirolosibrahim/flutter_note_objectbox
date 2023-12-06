import 'package:objectbox/objectbox.dart';

@Entity()
class NoteEntity {
  @Id()
  int id = 0;
  String? title, body;

//<editor-fold desc="Data Methods">
  NoteEntity({
    this.title,
    this.body,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NoteEntity &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          body == other.body);

  @override
  int get hashCode => title.hashCode ^ body.hashCode;

  @override
  String toString() {
    return 'NoteEntity{ title: $title, body: $body,}';
  }

  NoteEntity copyWith({
    String? title,
    String? body,
  }) {
    return NoteEntity(
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'body': body,
    };
  }

  factory NoteEntity.fromMap(Map<String, dynamic> map) {
    return NoteEntity(
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }

//</editor-fold>
}
