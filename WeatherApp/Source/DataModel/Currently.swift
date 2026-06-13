import Foundation

struct Currently {
  let time: Double
  let summary: String
  let icon: String
  let temperature: Double // 온도(화씨)
  
  init?(from json: [String : Any]) {
    guard let time = json["time"] as? Double,
      let summary = json["summary"] as? String,
      let icon = json["icon"] as? String,
      let temperature = json["temperature"] as? Double
      else {
        logger(ErrorLog.json)
        return nil
      }
    
    self.time = time
    self.summary = summary
    self.icon = icon
    self.temperature = temperature
  }
}
