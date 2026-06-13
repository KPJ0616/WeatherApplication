import UIKit

class SubInfoCell: UICollectionViewCell {
  
  internal lazy var subInfoCollectionView: SubInfoCollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    layout.minimumLineSpacing = 0
    layout.minimumInteritemSpacing = 0
    let cv = SubInfoCollectionView(frame: .zero, collectionViewLayout: layout)
    addSubview(cv)
    return cv
  }()
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = .clear
  }
  
  // MARK: - Layout Methods
  override func layoutSubviews() {
    super.layoutSubviews()
    makeConstraints()
  }
  
  private func makeConstraints() {
    subInfoCollectionView.layout.leading(constant: WeatherLayout.leftPadding).trailing(constant: WeatherLayout.rightPadding).top().bottom()
  }
}


