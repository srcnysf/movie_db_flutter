import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String? url;
  const CardItem({Key? key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Card(
        elevation: 0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Hero(
            tag: url!,
            child: Container(
                child: CachedNetworkImage(
              imageUrl: "https://image.tmdb.org/t/p/w500${url!}",
              placeholder: (context, url) => Container(
                  width: 125,
                  child: Center(child: CircularProgressIndicator())),
              errorWidget: (context, url, error) => Icon(Icons.error),
              fit: BoxFit.contain,
            ))),
      ),
    );
  }
}
