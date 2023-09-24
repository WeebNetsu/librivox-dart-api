import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:librivox_dart_api/librivox_dart_api.dart';

const String authorsUrl = '${LibrivoxApi.url}/authors';

/// Fetches a list of audio books from the Librivox API.
///
/// [limit] - specifies the maximum number of books to retrieve (default is 50).
///
/// [offset] - specifies the number of books to skip (default is 0).
///
/// Throws an [HttpException] if the API request fails.
///
/// Endpoint: `https://librivox.org/api/feed/authors/`
Future<List<Author>> getAuthors({int limit = 50, int offset = 0}) async {
  // build the URL
  final reqUrl = Uri.parse("$authorsUrl/${LibrivoxApi.formatUrl}&limit=$limit&offset=$offset");
  final response = await http.get(reqUrl);

  // if response is not success
  if (response.statusCode > 299) {
    throw HttpException(response.toString(), uri: Uri.parse(authorsUrl));
  }

  // decode the response
  Map<String, dynamic> data = jsonDecode(response.body);
  List<Author> authors = List<Author>.from(data['authors'].map((book) => Author.fromJson(book)));

  return authors;
}
