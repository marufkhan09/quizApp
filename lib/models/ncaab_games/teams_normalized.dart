import 'conference.dart';
import 'division.dart';

class TeamsNormalized {
  int? teamId;
  String? name;
  String? mascot;
  String? abbreviation;
  int? conferenceId;
  int? divisionId;
  int? ranking;
  String? record;
  bool? isAway;
  bool? isHome;
  Conference? conference;
  Division? division;

  TeamsNormalized({
    this.teamId,
    this.name,
    this.mascot,
    this.abbreviation,
    this.conferenceId,
    this.divisionId,
    this.ranking,
    this.record,
    this.isAway,
    this.isHome,
    this.conference,
    this.division,
  });

  factory TeamsNormalized.fromJson(Map<String, dynamic> json) {
    return TeamsNormalized(
      teamId: json['team_id'] as int?,
      name: json['name'] as String?,
      mascot: json['mascot'] as String?,
      abbreviation: json['abbreviation'] as String?,
      conferenceId: json['conference_id'] as int?,
      divisionId: json['division_id'] as int?,
      ranking: json['ranking'] as int?,
      record: json['record'] as String?,
      isAway: json['is_away'] as bool?,
      isHome: json['is_home'] as bool?,
      conference: json['conference'] == null
          ? null
          : Conference.fromJson(json['conference'] as Map<String, dynamic>),
      division: json['division'] == null
          ? null
          : Division.fromJson(json['division'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'team_id': teamId,
        'name': name,
        'mascot': mascot,
        'abbreviation': abbreviation,
        'conference_id': conferenceId,
        'division_id': divisionId,
        'ranking': ranking,
        'record': record,
        'is_away': isAway,
        'is_home': isHome,
        'conference': conference?.toJson(),
        'division': division?.toJson(),
      };
}
