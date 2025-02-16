// Question 4: Weather Report
// Use Map and List to create a program that stores weather data for different cities (temperature,
// humidity, etc.). Write a function that can retrieve and print weather details using a city name.

void main() {
  // Create weather data map
  Map<String, Map<String, dynamic>> weatherData = {
    'New York': {'temperature': 20, 'humidity': 65, 'condition': 'Sunny'},
    'London': {'temperature': 15, 'humidity': 70, 'condition': 'Cloudy'},
    'Tokyo': {'temperature': 25, 'humidity': 60, 'condition': 'Rainy'}
  };

  // Function to get weather details
  void getWeather(String city) {
    if (weatherData.containsKey(city)) {
      var details = weatherData[city]!;
      print('Weather in $city:');
      print('Temperature: ${details['temperature']}°C');
      print('Humidity: ${details['humidity']}%');
      print('Condition: ${details['condition']}');
    } else {
      print('No weather data available for $city');
    }
  }

  // Test the function
  getWeather('New York');
  getWeather('London');
  getWeather('Paris'); // City not in data
}
