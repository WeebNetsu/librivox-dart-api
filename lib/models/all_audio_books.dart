import 'package:librivox_dart_api/models/models.dart';

/// A model for an AudioBook object.
class AudioBook {
  /// Unique identifier of the book.
  final String id;

  /// Title of the book.
  final String title;

  /// Description of the book.
  final String description;

  /// URL of the text source for the book.
  final String urlTextSource;

  /// Language of the book.
  final String language;

  /// Year of copyright.
  final String copyrightYear;

  /// Number of sections in the book.
  final String numSections;

  /// URL of the RSS feed for the book.
  final String urlRss;

  /// URL of the zip file containing the book audio files.
  final String urlZipFile;

  /// URL of the project related to the book.
  final String urlProject;

  /// URL of the book on Librivox.
  final String urlLibrivox;

  /// Other URL related to the book.
  final String urlOther;

  /// Total time of the book in HH:MM:SS format.
  final String totalTime;

  /// Total time of the book in seconds.
  final int totalTimesecs;

  /// List of authors of the book.
  final List<Author> authors;

  AudioBook({
    required this.id,
    required this.title,
    required this.description,
    required this.urlTextSource,
    required this.language,
    required this.copyrightYear,
    required this.numSections,
    required this.urlRss,
    required this.urlZipFile,
    required this.urlProject,
    required this.urlLibrivox,
    required this.urlOther,
    required this.totalTime,
    required this.totalTimesecs,
    required this.authors,
  });

  /// Constructs a [AudioBook] object from a JSON map.
  factory AudioBook.fromJson(Map<String, dynamic> json) {
    List<Author> authors = [];
    if (json['authors'] != null) {
      authors = List<Author>.from(json['authors'].map((author) => Author.fromJson(author)));
    }

    return AudioBook(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      urlTextSource: json['url_text_source'] ?? '',
      language: json['language'] ?? '',
      copyrightYear: json['copyright_year'] ?? '',
      numSections: json['num_sections'] ?? '',
      urlRss: json['url_rss'] ?? '',
      urlZipFile: json['url_zip_file'] ?? '',
      urlProject: json['url_project'] ?? '',
      urlLibrivox: json['url_librivox'] ?? '',
      urlOther: json['url_other'] ?? '',
      totalTime: json['totaltime'] ?? '',
      totalTimesecs: json['totaltimesecs'] ?? 0,
      authors: authors,
    );
  }
}
