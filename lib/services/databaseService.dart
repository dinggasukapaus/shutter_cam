// ignore: avoid_web_libraries_in_flutter

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  // menghubungkan ke firestore yang refrense nya mengarah ke table'products'
  // kenapa static karena supaya productcollection menjadi milik kelasnya
  static CollectionReference productCollection =
      FirebaseFirestore.instance.collection('products');

  static CollectionReference rentCollection =
      FirebaseFirestore.instance.collection('rent');

  static CollectionReference paymentCollection =
      FirebaseFirestore.instance.collection('payment');

  // method untuk menambahkan atau update
  static Future<void> CreateOrUpdateProducts(String id,
      {String? name, int? price}) async {
    //
    await productCollection.doc(id).set({
      // map kumpulkan key dan value
      'nama': name,
      'harga': price,
    });
  }

  // method untuk menambahkan atau update
  static Future<void> Rent(String id,
      {String? name,
      int? price,
      String? timeRent,
      String? spec,
      String? desc}) async {
    //
    await rentCollection.doc(id).set({
      // map kumpulkan key dan value
      'nama': name,
      'harga': price,
      'waktupesan': timeRent,
      'spesifikasi': spec,
      'deskripsi': desc,
    });
  }

  // method untuk menambahkan atau update
  static Future<void> Payment(
    String id, {
    String? descP,
    int? totalPrice,
    String? noteR,
  }) async {
    //
    await paymentCollection.doc(id).set({
      // map kumpulkan key dan value
      'deskripsiPayment': descP,
      'hargaTotal': totalPrice,
      'ringkasanNota': noteR,
    });
  }

  // fungsi yang akan di panggil ketika snapshot
  static Future<DocumentSnapshot> getProduct(String id) async {
    return await productCollection.doc().get();
  }

  static Future<DocumentSnapshot> getRent(String id) async {
    return await rentCollection.doc().get();
  }

  static Future<DocumentSnapshot> getPayment(String id) async {
    return await paymentCollection.doc().get();
  }
}
