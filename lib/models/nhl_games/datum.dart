import 'line.dart';
import 'schedule.dart';
import 'score.dart';
import 'teams_normalized.dart';

class NhlGamesData {
  int? id;
  String? name;
  bool? isPick;
  dynamic url;
  String? sportId;
  String? sportName;
  String? eventDate;
  Score? score;
  List<TeamsNormalized>? teamsNormalized;
  Schedule? schedule;
  List<Line>? lines;
  dynamic message;
  NhlGamesData({
    this.id,
    this.name,
    this.isPick,
    this.url,
    this.sportId,
    this.sportName,
    this.eventDate,
    this.score,
    this.teamsNormalized,
    this.schedule,
    this.lines,
    this.message,
  });

  factory NhlGamesData.fromJson(Map<String, dynamic> json) => NhlGamesData(
      id: json['id'] ?? 0,
      name: json['name'] ?? "",
      isPick: json['is_pick'] ?? false,
      url: json['url'] as dynamic,
      sportId: json['sport_id'] ?? "",
      sportName: json['sport_name'] ?? "",
      eventDate: json['event_date'] ?? "",
      score: json['score'] == null
          ? null
          : Score.fromJson(json['score'] as Map<String, dynamic>),
      teamsNormalized: (json['teams_normalized'] as List<dynamic>?)
          ?.map((e) => TeamsNormalized.fromJson(e as Map<String, dynamic>))
          .toList(),
      schedule: json['schedule'] == null
          ? null
          : Schedule.fromJson(json['schedule'] as Map<String, dynamic>),
      lines: json['lines'] != null
          ? (json['lines'] as List<dynamic>?)
              ?.map((e) => Line.fromJson(e as Map<String, dynamic>))
              .toList()
          : <Line>[],
      message: json['message'] ?? "");

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'is_pick': isPick,
        'url': url,
        'sport_id': sportId,
        'sport_name': sportName,
        'event_date': eventDate,
        'score': score?.toJson(),
        'teams_normalized': teamsNormalized?.map((e) => e.toJson()).toList(),
        'schedule': schedule?.toJson(),
        'lines': lines?.map((e) => e.toJson()).toList(),
        'message': message,
      };
}
