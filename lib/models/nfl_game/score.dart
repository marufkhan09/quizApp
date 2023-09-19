class Score {
  String? eventId;
  String? eventStatus;
  int? winnerAway;
  int? winnerHome;
  int? scoreAway;
  int? scoreHome;
  List<dynamic>? scoreAwayByPeriod;
  List<dynamic>? scoreHomeByPeriod;
  String? venueName;
  String? venueLocation;
  int? gameClock;
  String? displayClock;
  int? gamePeriod;
  String? broadcast;
  String? eventStatusDetail;
  String? updatedAt;

  Score({
    this.eventId,
    this.eventStatus,
    this.winnerAway,
    this.winnerHome,
    this.scoreAway,
    this.scoreHome,
    this.scoreAwayByPeriod,
    this.scoreHomeByPeriod,
    this.venueName,
    this.venueLocation,
    this.gameClock,
    this.displayClock,
    this.gamePeriod,
    this.broadcast,
    this.eventStatusDetail,
    this.updatedAt,
  });

  factory Score.fromJson(Map<String, dynamic> json) => Score(
        eventId: json['event_id'] as String?,
        eventStatus: json['event_status'] as String?,
        winnerAway: json['winner_away'] as int?,
        winnerHome: json['winner_home'] as int?,
        scoreAway: json['score_away'] as int?,
        scoreHome: json['score_home'] as int?,
        scoreAwayByPeriod: json['score_away_by_period'] as List<dynamic>?,
        scoreHomeByPeriod: json['score_home_by_period'] as List<dynamic>?,
        venueName: json['venue_name'] as String?,
        venueLocation: json['venue_location'] as String?,
        gameClock: json['game_clock'] as int?,
        displayClock: json['display_clock'] as String?,
        gamePeriod: json['game_period'] as int?,
        broadcast: json['broadcast'] as String?,
        eventStatusDetail: json['event_status_detail'] as String?,
        updatedAt: json['updated_at'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'event_id': eventId,
        'event_status': eventStatus,
        'winner_away': winnerAway,
        'winner_home': winnerHome,
        'score_away': scoreAway,
        'score_home': scoreHome,
        'score_away_by_period': scoreAwayByPeriod,
        'score_home_by_period': scoreHomeByPeriod,
        'venue_name': venueName,
        'venue_location': venueLocation,
        'game_clock': gameClock,
        'display_clock': displayClock,
        'game_period': gamePeriod,
        'broadcast': broadcast,
        'event_status_detail': eventStatusDetail,
        'updated_at': updatedAt,
      };
}
