//
//  MyTableViewCell.swift
//  Movie
//
//  Created by YK on 2023/05/03.
//

import  UIKit


class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var acc: UILabel!
    @IBOutlet weak var audi: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
