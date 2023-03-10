

//  Container(
//                           margin: const EdgeInsets.all(14.0),
//                           width: 210.0,
//                           child:
//                               Stack(alignment: Alignment.topCenter, children: [
//                             Positioned(
//                               bottom: 15.0,
//                               child: Container(
//                                 height: 120.0,
//                                 width: 200.0,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(10.0),
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(10.0),
//                                   child: Column(
//                                       mainAxisAlignment: MainAxisAlignment.end,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           // 'Studio',

//                                           state.myDataFive[index].logement!,
//                                           style: const TextStyle(
//                                               fontSize: 22.0,
//                                               fontWeight: FontWeight.w600,
//                                               letterSpacing: 1.2),
//                                         ),
//                                         Text(
//                                           state.myDataFive[index].quartier!,
//                                           style: const TextStyle(
//                                               color: Colors.grey),
//                                         ),
//                                         const SizedBox(
//                                           height: 2.0,
//                                         ),
//                                         Text(state.myDataFive[index].prix!,
//                                             style: const TextStyle(
//                                                 fontSize: 18.0,
//                                                 fontWeight: FontWeight.w600))
//                                       ]),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(20.0),
//                                     boxShadow: const [
//                                       BoxShadow(
//                                         color: Colors.black26,
//                                         offset: Offset(0.0, 2.0),
//                                         blurRadius: 6.0,
//                                       ),
//                                     ]),
//                                 child: Stack(
//                                   children: [
//                                     ClipRRect(
//                                       borderRadius: BorderRadius.circular(20.0),
//                                       child: CachedNetworkImage(
//                                         height: 180.0,
//                                         width: 180.0,
//                                         fadeInCurve: Curves.decelerate,
//                                         placeholder: (context, url) =>
//                                             const Padding(
//                                           padding: EdgeInsets.all(18.0),
//                                           child: CircularProgressIndicator(
//                                               strokeWidth: 2,
//                                               color: Colors.blue),
//                                         ),
//                                         errorWidget: (context, url, error) =>
//                                             const Icon(Icons.person,
//                                                 color: Colors.blueGrey),
//                                         imageUrl: state.myDataFive[index]
//                                                 .pubUrlImg!.isEmpty
//                                             ? f[0]
//                                             : state.myDataFive[index]
//                                                 .pubUrlImg![0],
//                                         fit: BoxFit.cover,
//                                       ),
//                                     )
//                                   ],
//                                 )),
//                           ]),
//                         ),