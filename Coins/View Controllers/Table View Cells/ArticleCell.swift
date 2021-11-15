//
//  ArticleCell.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/15.
//

import UIKit

final class ArticleCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    func configure(with viewModel: ArticleViewModel) {
        titleLabel.text = viewModel.title
        descriptionLabel.text = viewModel.description
        dateLabel.text = viewModel.date
    }
    
}
