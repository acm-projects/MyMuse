import 'dart:typed_data';
import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uuid/uuid.dart';

class StorageMethodsNew {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // adding image to firebase storage
    Future<String> uploadMuseToStorage(String childName, String file, bool isPost) async {


      Reference ref = _storage.ref().child(childName).child(_auth.currentUser!.uid);

        final List<int> codeUnits = file.codeUnits;
        final Uint8List unit8List = Uint8List.fromList(codeUnits);


      if(isPost) {
        String id = const Uuid().v1();
        ref = ref.child(id);
      }

      UploadTask uploadTask = ref.putData(unit8List);

      TaskSnapshot snap = await uploadTask;

      String downloadUrl = await snap.ref.getDownloadURL();
      return downloadUrl;
    }
}