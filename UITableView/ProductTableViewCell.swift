//
//  ProductTableViewCell.swift
//  UITableView
//
//  Created by Aung Kyaw Phyo on 05/12/2024.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productRatingLabel: UILabel!
    @IBOutlet weak var productDescriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
