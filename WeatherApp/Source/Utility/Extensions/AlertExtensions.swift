import UIKit

extension UIAlertController {
  static func getAlertController(title: String? = nil, message: String?, actions: [UIAlertAction]? = nil) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    if let actions = actions {
      for action in actions {
        alert.addAction(action)
      }
    } else {
      let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
      alert.addAction(action)
    }
    return alert
  }
}

// VC에서 바로 쓰자
extension UIViewController {
  func showAlert(_ message: String?, _ title: String? = nil, _ actions: [UIAlertAction]? = nil, _ completion: (() -> ())? = nil ) {
    
    let alert = UIAlertController.getAlertController(title: title, message: message, actions: actions)
    
    DispatchQueue.main.async {
      self.present(alert, animated: true, completion: completion)
    }
  }
}
