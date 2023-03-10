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
    final height1 = MediaQuery.of(context).size.height * 0.25;
    final height2 = MediaQuery.of(context).size.height * 0.01;
    final width1 = MediaQuery.of(context).size.width * 0.3;
    final width2 = MediaQuery.of(context).size.width * 0.2;

    return Container(
      margin: const EdgeInsets.all(14.0),
      width: width2,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 15.0,
            child: Container(
              height: height1,
              width: width1,
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
                    SizedBox(
                      height: height2,
                    ),
                    Text(
                      prix,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
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
              ],
            ),
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      imageUrl,
                      height: height1,
                      width: width1,
                    )

                    // CachedNetworkImage(
                    //   height: 180.0,
                    //   width: 180.0,
                    //   fadeInCurve: Curves.decelerate,
                    //   placeholder: (context, url) => const Padding(
                    //     padding: EdgeInsets.all(18.0),
                    //     child: CircularProgressIndicator(
                    //         strokeWidth: 2, color: Colors.blue),
                    //   ),
                    //   errorWidget: (context, url, error) =>
                    //       const Icon(Icons.person, color: Colors.blueGrey),
                    //   imageUrl: state.myDataFive[index].pubUrlImg!.isEmpty
                    //       ? f[0]
                    //       : state.myDataFive[index].pubUrlImg![0],
                    //   fit: BoxFit.cover,
                    // ),
                    )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
