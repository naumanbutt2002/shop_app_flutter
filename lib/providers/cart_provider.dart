import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CartProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> cart = [];

  // Firestore collection reference
  final CollectionReference cartCollection =
      FirebaseFirestore.instance.collection('carts');

  CartProvider() {
    _fetchCartItems();
  }

  // Fetch cart items from Firestore when the provider is initialized
  Future<void> _fetchCartItems() async {
    try {
      QuerySnapshot snapshot = await cartCollection.get();
      cart.clear(); // Clear any existing items before adding from Firestore

      for (var doc in snapshot.docs) {
        cart.add({
          'docId': doc.id,
          'id': doc['id'],
          'title': doc['title'],
          'price': doc['price'],
          'imageUrl': doc['imageUrl'],
          'company': doc['company'],
          'size': doc['size'],
        });
      }
      notifyListeners(); // Notify listeners after fetching data
    } catch (e) {
      print('Error fetching cart items from Firestore: $e');
    }
  }

  void addProduct(Map<String, dynamic> product) async {
    cart.add(product);
    notifyListeners();

    // Add the product to Firebase Firestore
    try {
      DocumentReference docRef = await cartCollection.add({
        'id': product['id'],
        'title': product['title'],
        'price': product['price'],
        'imageUrl': product['imageUrl'],
        'company': product['company'],
        'size': product['size'],
      });

      // Save the Firestore document ID to the product data for future use
      product['docId'] = docRef.id;
    } catch (e) {
      print('Error adding product to Firestore: $e');
    }
  }

  void removeProduct(Map<String, dynamic> product) async {
    cart.remove(product);
    notifyListeners();

    // Remove the product from Firestore by document ID
    try {
      if (product.containsKey('docId')) {
        await cartCollection.doc(product['docId']).delete();
        print('Product removed from Firestore successfully!');
      } else {
        print('Error: Product document ID not found.');
      }
    } catch (e) {
      print('Error removing product from Firestore: $e');
    }
  }
}
