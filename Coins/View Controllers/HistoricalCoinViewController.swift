//
//  CoinDetailViewController.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/17.
//

import UIKit

final class HistoricalCoinViewController: UIViewController {

    // MARK: - Properties

    var viewModel: HistoricalCoinViewModel!

    @IBOutlet weak var coinLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewModel()
        setupView()
    }

    private func setupViewModel() {
        viewModel.didReceiveHistoricalCoin = { historicalCoins in
            
        }
        viewModel.fetchHistoricalCoin()
    }


    private func setupView() {
        periodSegmentedControl.backgroundColor = .clear
        periodSegmentedControl.selectedSegmentTintColor = .systemBlue
        let normalTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemGray]
        periodSegmentedControl.setTitleTextAttributes(normalTitleTextAttributes, for:.normal)
        let selectedTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        periodSegmentedControl.setTitleTextAttributes(selectedTitleTextAttributes, for:.selected)

        coinLabel.text = viewModel.title
    }

    @IBOutlet weak var periodSegmentedControl: UISegmentedControl!

    @IBAction func periodSegmentedControlDidTap(_ sender: UISegmentedControl) {
        let period: Period = Period(rawValue: sender.selectedSegmentIndex) ?? .day
        viewModel.selectedPeriod = period
    }

}
