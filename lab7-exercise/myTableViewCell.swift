//
//  myTableViewCell.swift
//  lab7-exercise
//
//  Created by 楊皓麟 on 2023/4/12.
//

import UIKit

class myTableViewCell: UITableViewCell {
    @IBOutlet weak var myImgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(imgname: String, title:String){
        myImgView.image = UIImage(named: imgname)
        titleLabel.text = title
    }
}
