import 'package:url_launcher/url_launcher.dart';

Future<void> LaunchUrl({
  required String bookURL,
}) async {
  final Uri url = Uri.parse(bookURL);
  if (!await launchUrl(url)) {
    throw Exception(
      'Could not launch $url',
    );
  }
}
