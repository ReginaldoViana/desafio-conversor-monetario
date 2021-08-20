//
//  CurrencyTableViewCell.swift
//  conversor-monetario
//
//  Created by Reginaldo Viana on 19/08/21.
//

import UIKit

class CurrencyTableViewCell: UITableViewCell {
    
    var currencyDescription = CurrencyDescription() {
        didSet {
            currencyDescriptionLabel.text = "\(currencyDescription.key) - \(currencyDescription.name)"
        }
    }

    @IBOutlet weak var currencyDescriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func prepareForReuse() {
        currencyDescriptionLabel.text = nil
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
