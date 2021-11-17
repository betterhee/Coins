//
//  ArticleCell.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/15.
//

import UIKit
import Kingfisher

final class ArticleCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    func configure(with viewModel: ArticleViewModel) {
        titleLabel.text = viewModel.title
        dateLabel.text = viewModel.date
        thumbnailImageView.kf.indicatorType = .activity
        thumbnailImageView.kf.setImage(with: viewModel.thumbnailUrl)
    }
    
}
