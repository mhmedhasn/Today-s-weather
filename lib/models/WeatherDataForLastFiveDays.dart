class WeatherDataForLastFiveDays {
  String dateTime;
  int temperature;


  WeatherDataForLastFiveDays(this.dateTime, this.temperature);





  Map<String, dynamic> toJson() {
    return {
      "dateTime": this.dateTime,
      "temperature": this.temperature,
    };
  }



}



