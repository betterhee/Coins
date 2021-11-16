//
//  CoinCell.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/16.
//

import UIKit

class CoinCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var changePriceLabel: UILabel!
    @IBOutlet weak var changePercentLabel: UILabel!
    
    func configure(with viewModel: CoinViewModel) {
        nameLabel.text = viewModel.name
        priceLabel.text = viewModel.price
        changePriceLabel.text = viewModel.changePrice
        changePercentLabel.text = viewModel.changePercent
    }

}
