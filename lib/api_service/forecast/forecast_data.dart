// ignore_for_file: public_member_api_docs, sort_constructors_first
class HourlyForecast {
  final String time;
  final double temperature;
  HourlyForecast({
    required this.time,
    required this.temperature,
  });

  factory HourlyForecast.fromjson(Map<String, dynamic> json) {
    return HourlyForecast(
      time: json['time'],
      temperature: json['temperature'] as double,
    );
  }
}
