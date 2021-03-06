class Albums {
  int? resultCount;
  final List<Album>? results;

  Albums({
    this.resultCount,
    this.results,
  });

  Albums.fromJson(Map<String, dynamic> json)
      : resultCount = json['resultCount'] as int?,
        results = (json['results'] as List?)
            ?.map((dynamic e) => Album.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'resultCount': resultCount,
        'results': results?.map((e) => e.toJson()).toList()
      };
}

class Album {
  final String? wrapperType;
  final String? collectionType;
  final int? artistId;
  final int? collectionId;
  final int? amgArtistId;
  final String? artistName;
  final String? collectionName;
  final String? collectionCensoredName;
  final String? artistViewUrl;
  final String? collectionViewUrl;
  final String? artworkUrl60;
  final String? artworkUrl100;
  final double? collectionPrice;
  final String? collectionExplicitness;
  final int? trackCount;
  final String? copyright;
  final String? country;
  final String? currency;
  final String? releaseDate;
  final String? primaryGenreName;

  Album({
    this.wrapperType,
    this.collectionType,
    this.artistId,
    this.collectionId,
    this.amgArtistId,
    this.artistName,
    this.collectionName,
    this.collectionCensoredName,
    this.artistViewUrl,
    this.collectionViewUrl,
    this.artworkUrl60,
    this.artworkUrl100,
    this.collectionPrice,
    this.collectionExplicitness,
    this.trackCount,
    this.copyright,
    this.country,
    this.currency,
    this.releaseDate,
    this.primaryGenreName,
  });
  @override
  bool operator ==(Object other) {
    if (other is Album && other.runtimeType == runtimeType) {
      if (other.collectionId == collectionId) {
        return true;
      }
    }
    return false;
  }

  @override
  int get hashCode => collectionId.hashCode;

  Album.fromJson(Map<String, dynamic> json)
      : wrapperType = json['wrapperType'] as String?,
        collectionType = json['collectionType'] as String?,
        artistId = json['artistId'] as int?,
        collectionId = json['collectionId'] as int?,
        amgArtistId = json['amgArtistId'] as int?,
        artistName = json['artistName'] as String?,
        collectionName = json['collectionName'] as String?,
        collectionCensoredName = json['collectionCensoredName'] as String?,
        artistViewUrl = json['artistViewUrl'] as String?,
        collectionViewUrl = json['collectionViewUrl'] as String?,
        artworkUrl60 = json['artworkUrl60'] as String?,
        artworkUrl100 = json['artworkUrl100'] as String?,
        collectionPrice = json['collectionPrice'] as double?,
        collectionExplicitness = json['collectionExplicitness'] as String?,
        trackCount = json['trackCount'] as int?,
        copyright = json['copyright'] as String?,
        country = json['country'] as String?,
        currency = json['currency'] as String?,
        releaseDate = json['releaseDate'] as String?,
        primaryGenreName = json['primaryGenreName'] as String?;

  Map<String, dynamic> toJson() => {
        'wrapperType': wrapperType,
        'collectionType': collectionType,
        'artistId': artistId,
        'collectionId': collectionId,
        'amgArtistId': amgArtistId,
        'artistName': artistName,
        'collectionName': collectionName,
        'collectionCensoredName': collectionCensoredName,
        'artistViewUrl': artistViewUrl,
        'collectionViewUrl': collectionViewUrl,
        'artworkUrl60': artworkUrl60,
        'artworkUrl100': artworkUrl100,
        'collectionPrice': collectionPrice,
        'collectionExplicitness': collectionExplicitness,
        'trackCount': trackCount,
        'copyright': copyright,
        'country': country,
        'currency': currency,
        'releaseDate': releaseDate,
        'primaryGenreName': primaryGenreName
      };
}
