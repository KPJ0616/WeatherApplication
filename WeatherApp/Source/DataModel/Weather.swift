import Foundation


struct Weather {
  var locationInfo: String?
  let currently: Currently
  let hourly: [Hourly]
  let daily: [Daily]
  let subInfo: SubInfo
  
  mutating func setLocationName(to location: String) {
    self.locationInfo = location
  }
}
