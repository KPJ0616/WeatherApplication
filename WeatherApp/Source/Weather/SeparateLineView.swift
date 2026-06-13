import UIKit

class SeparateLineView: UIView {

  // MARK: - Initializers
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    fatalError(ErrorLog.coderInit)
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = WeatherColor.separateLineColor
  }
  
  // MARK: - Layout Methods
  internal func makeConstraints(atBottom bottom: NSLayoutYAxisAnchor) {
    self.layout.leading().trailing().height(constant: 0.7).bottom(equalTo: bottom)
  }

}
