import Foundation

protocol WeatherServiceType {
  
  func fetchWeatherData(
    latitude: Double,
    longitude: Double,
    locationInfo: String?,
    completionHandler: @escaping (Result<Weather, ServiceError>) -> Void
  )
  
}
