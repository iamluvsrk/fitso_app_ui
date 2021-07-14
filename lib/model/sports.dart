import 'package:flutter/material.dart';

class SportCenter {
  SportCenter(this.centerName, this.sports, this.rating, this.imageurl);
  final String centerName;
  final List<String> sports;
  final double rating;
  final String imageurl;
}

List<SportCenter> sportCenterList = [
  SportCenter("Ganeshara Stadium", ["Tenis"], 4.3,
      "https://images.unsplash.com/photo-1547347298-4074fc3086f0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHNwb3J0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  SportCenter("Sector 43 EAS", ["Tenis", "running", "Badminton"], 4.1,
      "https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTB8fHNwb3J0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  SportCenter("TipTop Academy", ["Tenis", "Cricket"], 3.3,
      "https://images.unsplash.com/photo-1526166729864-ddc57657d48f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fHNwb3J0c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  SportCenter("Playing Ground", ["Bollybol"], 5.0,
      "https://images.unsplash.com/photo-1571019613576-2b22c76fd955?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"),
];
