//
//  MyTableViewCell.swift
//  Movie app
//
//  Created by Swapnnil Kadam on 31/12/22.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension MyTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eData[myCollectionView.tag].imageGallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! MyCollectionViewCell
        
        cell.myImage.image = UIImage(named: eData[collectionView.tag].imageGallery[indexPath.row])
        return cell
    }
    
    
}
