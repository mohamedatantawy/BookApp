import 'package:equatable/equatable.dart';

import 'image_links.dart';
import 'industry_identifier.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';
import 'package:equatable/equatable.dart';

class VolumeInfo extends Equatable {
  final String? title;
  final List<String>? authors ; // Changed from List<String>? to List<String>
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories; // Changed from List<String>? to List<String>
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  const VolumeInfo( {
    this.title,this.authors, this.categories,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  }) ; // Initialize to an empty list if null

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
        title: (json['title'] as String?),
        authors:json['authors']==null?null: (json['authors'] as List<dynamic>?)!.map((e) => e.toString()).toList() , // Handle null
        publisher: (json['publisher'] as String?),
        publishedDate: (json['publishedDate'] as String?),
        description: (json['description'] as String?),
        industryIdentifiers:json['industryIdentifiers']==null?null: (json['industryIdentifiers'] as List<dynamic>?)
            !.map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
            .toList(),
        readingModes: json['readingModes'] == null
            ? null
            : ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>),
        pageCount: (json['pageCount'] as int?)??0,
        printType: (json['printType'] as String?)??'',
        categories: json['categories']==null?null:(json['categories'] as List<dynamic>?)?.map((e) => e.toString()).toList() , // Handle null
        maturityRating: (json['maturityRating'] as String?)??'',
        allowAnonLogging: (json['allowAnonLogging'] as bool?)??true,
        contentVersion: (json['contentVersion'] as String?)??'',
        panelizationSummary: json['panelizationSummary'] == null
            ? null
            : PanelizationSummary.fromJson(json['panelizationSummary'] as Map<String, dynamic>),
        imageLinks: json['imageLinks'] == null
            ? null
            : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
        language: (json['language'] as String?)??"",
        previewLink: (json['previewLink'] as String?)??'',
        infoLink: (json['infoLink'] as String?)??'',
        canonicalVolumeLink: (json['canonicalVolumeLink'] as String?)??'',
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'authors': authors,
        'publisher': publisher,
        'publishedDate': publishedDate,
        'description': description,
        'industryIdentifiers': industryIdentifiers?.map((e) => e.toJson()).toList(),
        'readingModes': readingModes?.toJson(),
        'pageCount': pageCount,
        'printType': printType,
        'categories': categories,
        'maturityRating': maturityRating,
        'allowAnonLogging': allowAnonLogging,
        'contentVersion': contentVersion,
        'panelizationSummary': panelizationSummary?.toJson(),
        'imageLinks': imageLinks?.toJson(),
        'language': language,
        'previewLink': previewLink,
        'infoLink': infoLink,
        'canonicalVolumeLink': canonicalVolumeLink,
      };

  @override
  List<Object?> get props => [
        title,
        authors,
        publisher,
        publishedDate,
        description,
        industryIdentifiers,
        readingModes,
        pageCount,
        printType,
        categories,
        maturityRating,
        allowAnonLogging,
        contentVersion,
        panelizationSummary,
        imageLinks,
        language,
        previewLink,
        infoLink,
        canonicalVolumeLink,
      ];
}