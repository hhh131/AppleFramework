
import UIKit

class FrameWorkListViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView!
    let list : [AppleFramework] = AppleFramework.list
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
    }

    
    
    
}

extension FrameWorkListViewController : UICollectionViewDataSource{
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FrameWorkCell", for: indexPath) as? FrameWorkCell else {
            return UICollectionViewCell()
        }
        let framework = list[indexPath.item]
        cell.configure(framework)
        
        
        return cell
    }
    
}


extension FrameWorkListViewController : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let interItemSpacing: CGFloat = 10
        let width  = (collectionView.bounds.width - interItemSpacing * 2) / 3
    
        let height = width * 1.5
        print("\(width) \(height)")
        return CGSize(width: width, height:height)    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 10
//    }
    
}
