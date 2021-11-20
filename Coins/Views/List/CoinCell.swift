//
//  CoinCell.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/16.
//

import UIKit

final class CoinCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var changePercentLabel: UILabel!
    
    func configure(with viewModel: CoinViewModel) {
        nameLabel.text = viewModel.name
        priceLabel.text = viewModel.price
        changePercentLabel.text = viewModel.changePercent
        changePercentLabel.textColor = viewModel.changePercentTextColor.color
    }

}
