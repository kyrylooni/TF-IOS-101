//
//  MovieCell.swift
//  ios101-lab5-flix1
//
//  Created by Kyrylo Onishchenko on 7/6/25.
//

import UIKit

class MovieCell: UITableViewCell {
    
    
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var title_lable: UILabel!
    @IBOutlet weak var overviewLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
