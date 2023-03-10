import 'package:flutter/material.dart';
import 'package:mes_bapack_project/screen/settings_screen.dart';
import 'package:mes_bapack_project/widget/publication_item.dart';

import '../wrapper.dart';

//class MyApp extends StatelessWidget {
// const MyApp({super.key});

//@override
// Widget build(BuildContext context) {
// return MaterialApp(
// debugShowCheckedModeBanner: false,
//title: 'Flutter Demo',
//theme: ThemeData(
//  primarySwatch: Colors.blue,
// ),
// home: const MyHomePage(
//   title: 'Se Loger à Douala',
//  ),
// );
//}
//}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  // final User? user;

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with AutomaticKeepAliveClientMixin {
  // final Stream<QuerySnapshot> _pubblication =
  //     FirebaseFirestore.instance.collection('publication').snapshots();
  int _selectedIndex = 0;
  final int _counter = 0;

  final List<String> _list = [
    'Meublés',
    'Villa',
    'Appartement',
    'Studio',
    'Chambre',
    'Terrain',
    'Boutique'
  ];

  void _incrementCounter() {
    //  setState(() {
    //   _counter++;
    //  });
  }
  Widget _buildLogement(int index) {
    return GestureDetector(
      onTap: () {
        // switch (index) {
        //   case 0:
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (_) => const LogementMeubles()));
        //     break;
        //   case 1:
        //     {
        //       Navigator.push(context,
        //           MaterialPageRoute(builder: (_) => const LogementVilla()));
        //       context.read<PubBloc>().add(LoadPublication1());
        //     }

        //     break;
        //   case 2:
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (_) => LogementAppart()));
        //     break;

        //   case 3:
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (_) => LogementStudio()));
        //     break;
        //   case 4:
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (_) => LogementChambre()));
        //     break;
        //   case 5:
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (_) => const LogementTerrain()));
        //     break;
        //   case 6:
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (_) => const LogementBoutik()));
        //     break;
        // }

        // setState(() {
        //   _selectedIndex = index;
        // });
      },
      child: Container(
        margin: const EdgeInsets.only(left: 30.0),
        height: 70.0,
        width: 90.0,
        decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Theme.of(context).indicatorColor
                : const Color.fromARGB(255, 197, 221, 241),
            borderRadius: BorderRadius.circular(30.0)),
        padding: const EdgeInsets.only(top: 25.0),
        child: Text(
          _list[index],
          style: TextStyle(
              color: _selectedIndex == index
                  ? Theme.of(context).scaffoldBackgroundColor
                  : const Color.fromARGB(255, 75, 78, 80),
              fontWeight: FontWeight.bold),
          textWidthBasis: TextWidthBasis.parent,
          textAlign: TextAlign.center,
          textHeightBehavior: DefaultTextHeightBehavior.of(context),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    // final _proprio = Provider.of<User?>(context);

    // List<Description> _pubList = Provider.of<List<Description>>(context);
    // return StreamBuilder<Object>(
    //     stream: _pubblication,
    //     builder: (context, snapshot) {
    //       if (snapshot.hasError) {
    //         return Text('besoin de publication');
    //       }
    //       if (snapshot.connectionState == ConnectionState.waiting) {
    //         return Text('chargement...');
    //       }

    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 213, 201, 224),
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            widget.title,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () => showModalBottomSheet(
                  context: context,
                  builder: (context) => const SettingsPopop()),
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
            )
          ]),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: const EdgeInsets.only(top: 15),
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      // ignore: prefer_const_literals_to_create_immutables
                      colors: <Color>[Colors.white, Colors.blue]),
                ),
                //Image.asset('images/LOGO.jpg'),
                child: Container()
                //  CircleAvatar(
                //   backgroundColor: const Color.fromARGB(221, 37, 73, 42),
                //   child:
                //   //  widget.user != null
                //   //     ? Image.network(
                //   //         widget.user!.photoURL.toString(),
                //   //       )
                //       // RichText(
                //       //     text: TextSpan(children: [
                //       //     TextSpan(
                //       //         text: '${widget.user?.displayName}',
                //       //         //'${user.displayName}',
                //       //         style: Theme.of(context).textTheme.bodyText2),
                //       //     TextSpan(text: '${widget.user?.email}')
                //       //   ]))
                //       // : Image.asset('images/LOGO.jpg'),
                // ),
                ),
            ListTile(
              title: const Text('ESPACE BAILLEURS'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) {
                          return Wrapper(
                              // user: _proprio,
                              );
                          // return EspaceBailleurScreen(
                          //   user: _proprio,
                          // );
                        }),
                        fullscreenDialog: true));
              },
            ),
            const Divider(),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text('ARRONDISSEMENTS'),
                  const Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                  ),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('ESPACE AGENTS IMMOBILIERS'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('AGENTS CADASTRES'),
                  Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                  ),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('GEOMETRE'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
          ],
        ),
      ),
      body: SafeArea(
          child: Scrollbar(
        child: ListView(
          addAutomaticKeepAlives: true,
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'Quel type de logement cherchez vous?',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 238, 235, 235)),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 70,
              //  child: Row(
              child: ListView(
                scrollDirection: Axis.horizontal,

                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _buildLogement(0),
                  _buildLogement(1),
                  _buildLogement(2),
                  _buildLogement(3),
                  _buildLogement(4),
                  _buildLogement(5),
                  _buildLogement(6),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const PublicationItem(
                imageUrl: 'photo',
                logement: "logement",
                quartier: 'quartier',
                prix: 'prix'),
            // Douala5iemLogement(),
            const SizedBox(
              height: 20.0,
            ),
            const PublicationItem(
                imageUrl: 'photo',
                logement: "logement",
                quartier: 'quartier',
                prix: 'prix'),

            //  Douala1erLogement(),
            const SizedBox(
              height: 20.0,
            ),
            const PublicationItem(
                imageUrl: 'photo',
                logement: "logement",
                quartier: 'quartier',
                prix: 'prix'),

            // Douala2iemLogement(),
            const SizedBox(
              height: 20.0,
            ),
            const PublicationItem(
                imageUrl: 'photo',
                logement: "logement",
                quartier: 'quartier',
                prix: 'prix'),

            // Douala3iemLogement(),
            const SizedBox(
              height: 20.0,
            ),
            const PublicationItem(
                imageUrl: 'photo',
                logement: "logement",
                quartier: 'quartier',
                prix: 'prix'),

            // Douala4iemLogement(),
          ],
        ),
      )),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
