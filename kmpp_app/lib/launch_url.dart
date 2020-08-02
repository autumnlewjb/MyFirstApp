import 'package:url_launcher/url_launcher.dart';

class UrlManager {
  static void launchMIS() async {
    const url = 'http://mis.kmpp.matrik.edu.my/misv3/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static void launchPortal() async {
    const url = 'http://portal.kmpp.matrik.edu.my/login/index.php';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static void launchEsasi() async {
    const url = 'http://esasi.kmpp.matrik.edu.my/loginPelajar.php';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
