import 'package:flutter/material.dart';
import 'package:mes_bapack_project/widget/publication_item.dart';

class PublicationBuilder extends StatelessWidget {
  final List publicationList;
  final String builderTitle;
  final String routeName;

  const PublicationBuilder({
    super.key,
    required this.publicationList,
    required this.builderTitle,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          //

          leading: Text(builderTitle),
          trailing: GestureDetector(
            onTap: () {},
            child: const Text(
              "voir plus",
            ),
          ),
        ),
        ListView.builder(
          itemCount: publicationList.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return PublicationItem(
              imageUrl: publicationList[index].image,
              logement: publicationList[index].logement,
              quartier: publicationList[index].quartier,
              prix: publicationList[index].prix,
            );
          },
        )
      ],
    );
  }
}
