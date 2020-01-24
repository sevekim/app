import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//TODO: need to clean up and remove those that are not being used
class Post {
  String postID;
  DateTime eventDateRaw; //only used to display
  TimeOfDay eventTimeRaw; //only used to display
  Timestamp eventTimeTotal; //Used for firebase
  String dateTimeDisplay;
  String postTitle;
  String postPrice;
  String postDescription;
  String postType;
  int likeCount;
  String authorID;
  List<dynamic> imageUrlList; //Will be updated when url is downloaded
  bool imageMapEmpty; //determines to skip the download process
  String imageFolderID; //used to delete all the post images
  //dynamic can be either String (imageURL) or File
  List<dynamic> imageMaps; //used to display images in preview
  List<StorageTaskSnapshot> imageSnapshot; //used to download the url
  LatLng latLng;
  String placeID;
  String fullLocationName;
  String address;
  String locationDisplayName;
  Timestamp timestamp;
  double locationLat;
  double locationLng;
  bool isSpacePlaceHolder;
  String authorName;

  Post({
    this.postID,
    this.eventDateRaw,
    this.eventTimeRaw,
    this.imageUrlList,
    this.postDescription,
    this.likeCount,
    this.authorID,
    this.postPrice,
    this.postTitle,
    this.postType,
    this.imageMapEmpty,
    this.imageFolderID,
    this.imageMaps,
    this.imageSnapshot,
    this.dateTimeDisplay,
    this.fullLocationName,
    this.address,
    this.latLng,
    this.placeID,
    this.locationDisplayName,
    this.timestamp,
    this.locationLat,
    this.locationLng,
    this.eventTimeTotal,
    this.isSpacePlaceHolder = false,
    this.authorName,
  });

  factory Post.fromDoc(DocumentSnapshot doc) {
    return Post(
      postID: doc.documentID,
      postTitle: doc['postTitle'],
      postPrice: doc['postPrice'],
      dateTimeDisplay: doc['dateTimeDisplay'],
      locationDisplayName: doc['locationDisplayName'],
      locationLat: doc['locationLat'],
      locationLng: doc['locationLng'],
      placeID: doc['placeID'],
      fullLocationName: doc['fullLocationName'],
      postDescription: doc['postDescription'],
      imageUrlList: doc['imageUrlList'],
      authorID: doc['authorID'],
      eventTimeTotal: doc['eventTimeTotal'],
      imageMapEmpty: doc['imageMapEmpty'],
      imageFolderID: doc['imageFolderID'],
      timestamp: doc['timestamp'],
      authorName: doc['authorName']
    );
  }
}
