//
//  myCollectionViewCell.swift
//  lab7-exercise
//
//  Created by 楊皓麟 on 2023/4/12.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setCell(imgName:String, title:String){
        imgView.image = UIImage(named: imgName)
        titleLabel.text = title
    }
}
