import 'package:equatable/equatable.dart';

import 'epub.dart';
import 'pdf.dart';

class AccessInfo extends Equatable {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Epub? epub;
  final Pdf? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  const AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
    country: json['country'] == null ? '' : json['country'] as String,
    viewability:
        json['viewability'] == null ? '' : json['viewability'] as String,
    embeddable: json['embeddable'] == null ? false : json['embeddable'] as bool,
    publicDomain:
        json['publicDomain'] == null ? false : json['publicDomain'] as bool,
    textToSpeechPermission:
        json['textToSpeechPermission'] == null
            ? ''
            : json['textToSpeechPermission'] as String,
    epub:
        json['epub'] == null
            ? null
            : Epub.fromJson(json['epub'] as Map<String, dynamic>),
    pdf:
        json['pdf'] == null
            ? null
            : Pdf.fromJson(json['pdf'] as Map<String, dynamic>),
    webReaderLink:
        json['webReaderLink'] == null ? '' : json['webReaderLink'] as String,
    accessViewStatus:
        json['accessViewStatus'] == null
            ? ''
            : json['accessViewStatus'] as String,
    quoteSharingAllowed:
        json['quoteSharingAllowed'] == null
            ? false
            : json['quoteSharingAllowed'] as bool,
  );

  Map<String, dynamic> toJson() => {
    'country': country,
    'viewability': viewability,
    'embeddable': embeddable,
    'publicDomain': publicDomain,
    'textToSpeechPermission': textToSpeechPermission,
    'epub': epub?.toJson(),
    'pdf': pdf?.toJson(),
    'webReaderLink': webReaderLink,
    'accessViewStatus': accessViewStatus,
    'quoteSharingAllowed': quoteSharingAllowed,
  };

  @override
  List<Object?> get props {
    return [
      country,
      viewability,
      embeddable,
      publicDomain,
      textToSpeechPermission,
      epub,
      pdf,
      webReaderLink,
      accessViewStatus,
      quoteSharingAllowed,
    ];
  }
}
