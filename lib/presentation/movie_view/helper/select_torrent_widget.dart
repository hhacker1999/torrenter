import 'package:flutter/material.dart';
import 'package:torrenter/app/constants.dart';

class SelectTorrentWidget extends StatelessWidget {
  const SelectTorrentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(15),
      width: double.maxFinite,
      color: AppConstants.purple.withOpacity(0.9),
      child: Column(
        children: const [
          Icon(
            Icons.download,
            color: Colors.white,
            size: 45,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Select torrent",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
