import UIKit

enum ButtonID: Int {
  case detailWeatherButton
  case locationListButton
  case celsiusButton
  case fahrenheitButton
  case plusButton
  
  var id: Int {
    return self.rawValue
  }
}

extension UIControl {
  var id: Int {
    get {
      return self.tag
    } set {
      self.tag = newValue
    }
  }
}

enum NotificationID {
  static let DataDidChanged = NSNotification.Name("DataDidChanged")
}
