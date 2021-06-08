import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog/models/catalog.dart';
import '../add_to_cart_button.dart';
import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: VxBox(
          child: Row(
        children: [
          Hero(
              tag: Key(catalog.id.toString()),
              child: CatalogImage(
                image: catalog.image,
              )),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg
                  .color(Theme.of(context).accentColor)
                  .bold
                  .make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              13.heightBox,
              Container(
                padding: EdgeInsets.only(right: 10),
                child: ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.lg.make(),
                    AddToCart(catalog: catalog),
                  ],
                ),
              )
            ],
          ))
        ],
      )).color(Theme.of(context).cardColor).rounded.square(150).make().py(6),
    );
  }
}
