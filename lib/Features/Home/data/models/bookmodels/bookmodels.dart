import 'package:equatable/equatable.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';

import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class Bookmodels extends BookEntity {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

   Bookmodels({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(BookId:id!, image: volumeInfo?.imageLinks?.thumbnail??'', Bookname: volumeInfo!.title??'', authorname: volumeInfo.authors?.first??'', price: 0.0, rating: 3.0);

  factory Bookmodels.fromJson(Map<String, dynamic> json) => Bookmodels(
        kind: (json['kind'] as String?)??'',
        id: (json['id'] as String?)??'',
        etag: (json['etag'] as String?)??'',
        selfLink: (json['selfLink'] as String?)??'',
        volumeInfo: json['volumeInfo'] == null
            ? null
            : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
        saleInfo: json['saleInfo'] == null
            ? null
            : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
        accessInfo: json['accessInfo'] == null
            ? null
            : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
        searchInfo: json['searchInfo'] == null
            ? null
            : SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'id': id,
        'etag': etag,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo?.toJson(),
        'saleInfo': saleInfo?.toJson(),
        'accessInfo': accessInfo?.toJson(),
        'searchInfo': searchInfo?.toJson(),
      };

  }

