import 'package:flutter/material.dart';
import 'package:pixel_apps_assignment/models/albums.dart';

class AlbumHolder extends StatelessWidget {
  const AlbumHolder({Key? key, this.album}) : super(key: key);
  final Album? album;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (album!.artworkUrl100 != null)
          Expanded(
            child: Image.network(
              album!.artworkUrl100!,
            ),
          )
        else
          Expanded(
              child: Image.asset(
            'assets/itunes_logo.png',
            height: 38,
            width: 38,
          )),
        if (album!.artworkUrl100 != null) Text(album!.collectionName!),
        if (album!.releaseDate != null && album!.releaseDate!.length > 4)
          Text(album!.releaseDate!.substring(0, 4)),
      ],
    );
  }
}
