import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kmpp_app/qr_scanner.dart';

// TODO: The inkwell is not splashing again
class CardManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        misCard(context),
        portalCard(context),
        esasiCard(context),
      ],
    );
  }

  Widget misCard(BuildContext context) {
    return new Stack(
      children: <Widget>[
        Container(
          height: 170,
          child: Card(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/welcome.jpg'),
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5),
                        BlendMode.luminosity,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        'KMPP MIS',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Website by KMPP to record your outings.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            clipBehavior: Clip.antiAlias,
          ),
        ),
        Container(
          height: 170,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () =>
                  launchURLWithBrowser('http://mis.kmpp.matrik.edu.my/misv3/'),
              splashColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget portalCard(BuildContext context) {
    return new Stack(
      children: <Widget>[
        Container(
          height: 170,
          child: Card(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/library.jpg'),
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5),
                        BlendMode.luminosity,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        'KMPP Portal',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'KMPP Student Portal to download lecture notes.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            clipBehavior: Clip.antiAlias,
          ),
        ),
        Container(
          height: 170,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => launchURLWithBrowser(
                  'http://portal.kmpp.matrik.edu.my/login/index.php'),
              splashColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget esasiCard(BuildContext context) {
    return new Stack(
      children: <Widget>[
        Container(
          height: 170,
          child: Card(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'images/sport.jpg',
                      ),
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5),
                        BlendMode.luminosity,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        'KMPP Esasi',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Website to record your co-curricular participation. ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 170,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => launchURLWithBrowser(
                          'http://esasi.kmpp.matrik.edu.my/loginPelajar.php'),
                      splashColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            clipBehavior: Clip.antiAlias,
          ),
        ),
      ],
    );
  }
}
