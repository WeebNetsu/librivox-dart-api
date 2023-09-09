/// A model for an Author object.
class Author {
  /// Unique identifier of the author.
  final int id;

  /// First name of the author.
  final String firstName;

  /// Last name of the author.
  final String lastName;

  // note that dob and dod are strings, since "c. 8th cen" may
  // be returned from the API

  /// Date of birth of the author.
  final String dob;

  /// Date of death of the author.
  final String dod;

  Author({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.dob,
    required this.dod,
  });

  /// Constructs an [Author] object from a JSON map.
  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      id: int.parse(json['id']),
      firstName: json['first_name'] ?? '',
      lastName: json['last_name'] ?? '',
      dob: json['dob'],
      dod: json['dod'],
    );
  }
}
