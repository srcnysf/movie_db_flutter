import 'package:flutter/material.dart';

class MealListItem extends StatelessWidget {
  final String? url;
  const MealListItem({Key? key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: url!,
                  child: Container(
                    height: 220,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                        image: DecorationImage(
                            fit: BoxFit.fitWidth, image: NetworkImage(url!))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
