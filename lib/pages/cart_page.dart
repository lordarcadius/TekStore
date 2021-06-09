import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          VxBuilder(
            mutations: {RemoveMutation},
            builder: (context, myStore, _) {
              return "\$${_cart.totalPrice}"
                  .text
                  .xl4
                  .color(Theme.of(context).accentColor)
                  .make();
            },
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: 'Buying not supported yet.'.text.make(),
              ));
            },
            child: "Buy".text.make(),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Theme.of(context).buttonColor),
              shape: MaterialStateProperty.all(StadiumBorder()),
            ),
          ).wh(75, 40)
        ],
      ),
    ).pOnly(left: 32, right: 32);
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return Container(
      child: _cart.items.isEmpty
          ? "Nothing to show".text.xl3.makeCentered()
          : ListView.builder(
              itemCount: _cart.items?.length,
              itemBuilder: (context, index) => ListTile(
                leading: Icon(Icons.done),
                trailing: IconButton(
                  onPressed: () => RemoveMutation(_cart.items[index]),
                  icon: Icon(Icons.remove_circle_outline),
                ),
                title: _cart.items[index].name.text.make(),
              ),
            ),
    );
  }
}
