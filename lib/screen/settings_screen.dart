import 'package:flutter/material.dart';

class SettingsPopop extends StatelessWidget {
  const SettingsPopop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 200, 0),
      child: SizedBox(
        height: 350,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),

            //const EdgeInsets.fromLTRB(4, 0, 0, 0),
            const Text(
              'Paramètres',
              textAlign: TextAlign.justify,
              maxLines: 1,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),

            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.person),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'Mon compte Kola',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.email),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'Nous contactez',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.text_format),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'Conditions générales ',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.document_scanner),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'Mentions légales',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.people_outline_sharp),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'Partenaires tiers',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
