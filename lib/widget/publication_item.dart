import 'package:flutter/material.dart';

class PublicationItem extends StatelessWidget {
  final String imageUrl;
  final String logement;
  final String quartier;
  final String prix;

  const PublicationItem({
    super.key,
    required this.imageUrl,
    required this.logement,
    required this.quartier,
    required this.prix,
  });

  @override
  Widget build(BuildContext context) {
    final height1 = MediaQuery.of(context).size.height * 0.375;
    // final height2 = MediaQuery.of(context).size.height * 0.01;
    // final width1 = MediaQuery.of(context).size.width * 0.3;
    // final width2 = MediaQuery.of(context).size.width * 0.2;
    List<dynamic> f = [
      "https://allconstructionexcavation.ciblelocale.ca/administrator/components/com_fiches_clients/images_galerie/aucune-image-disponible.png"
    ];

    return SizedBox(
      height: height1,
      child: Container(
        margin: const EdgeInsets.all(14.0),
        width: 210.0,
        child: Stack(alignment: Alignment.topCenter, children: [
          Positioned(
            bottom: 15.0,
            child: Container(
              height: 120.0,
              width: 200.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // 'Studio',

                        logement,
                        style: const TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2),
                      ),
                      Text(
                        quartier,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 2.0,
                      ),
                      Text(prix,
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w600))
                    ]),
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ]),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child:
                        //  CachedNetworkImage(
                        //   height: 180.0,
                        //   width: 180.0,
                        //   fadeInCurve: Curves.decelerate,
                        //   placeholder: (context, url) =>
                        //       const Padding(
                        //     padding: EdgeInsets.all(18.0),
                        //     child: CircularProgressIndicator(
                        //         strokeWidth: 2,
                        //         color: Colors.blue),
                        //   ),
                        //   errorWidget: (context, url, error) =>
                        //       const Icon(Icons.person,
                        //           color: Colors.blue),
                        //   imageUrl: state.myDataFirst[index]
                        //           .pubUrlImg!.isEmpty
                        //       ? f[0]
                        //       : state.myDataFirst[index]
                        //           .pubUrlImg![0],
                        //   fit: BoxFit.cover,
                        // ),
                        Image(
                            height: 180.0,
                            width: 180.0,
                            image: NetworkImage(f[0]),
                            fit: BoxFit.cover),
                  )
                ],
              )),
        ]),
      ),
    );
  }
}
