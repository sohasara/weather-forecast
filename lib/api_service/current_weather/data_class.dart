// ignore_for_file: public_member_api_docs, sort_constructors_first

// ignore_for_file: non_constant_identifier_names

class CurrentWeatherData {
  final double temp;
  final double feels_like;
  final double temp_min;
  final double temp_max;
  final int pressure;
  final int humidity;
  final double speed;

  CurrentWeatherData({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.pressure,
    required this.humidity,
    required this.speed,
  });

  factory CurrentWeatherData.fromMap(Map<String, dynamic> map) {
    return CurrentWeatherData(
      temp: map['main']['temp'] as double,
      feels_like: map['main']['feels_like'] as double,
      temp_min: map['main']['temp_min'] as double,
      temp_max: map['main']['temp_max'] as double,
      pressure: map['main']['pressure'] as int,
      humidity: map['main']['humidity'] as int,
      speed: map['wind']['speed'] as double,
    );
  }
}
