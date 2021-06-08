import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._internal();
  CartModel._internal();

  factory CartModel() => cartModel;

  //Catalog field
  CatalogModel _catalog;

  //Collection of IDs - store ID of each of item
  final List<int> _itemIds = [];

  //Get catalog
  CatalogModel get catalog => _catalog;

  //Set catalog
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //Get totaL
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add item
  void addItem(Item item) {
    _itemIds.add(item.id);
  }

  //Remove item
  void removeItem(Item item) {
    _itemIds.remove(item.id);
  }
}
