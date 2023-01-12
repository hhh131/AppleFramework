
import UIKit

class FrameWorkCell: UICollectionViewCell {
    
    
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var thumnailImageView: UIImageView!
    
    func configure (_ framework: AppleFramework){
        thumnailImageView.image = UIImage(named: framework.imageName)
        nameLabel.text = framework.name
    }

}
