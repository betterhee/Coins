//
//  CoinsViewController.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/15.
//

import UIKit

final class CoinsViewController: UIViewController {

    private enum SegueIdentifier: String {
        case toHistoricalCoin
    }

    // MARK: - Properties
    
    private var viewModel: CoinsViewModel!

    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel = CoinsViewModel(coinssUpdatedAction: {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        })
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if let selectedIndexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: selectedIndexPath, animated: false)
        }
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == SegueIdentifier.toHistoricalCoin.rawValue,
           let destination = segue.destination as? HistoricalCoinViewController,
           let viewModel = sender as? HistoricalCoinViewModel {
            destination.viewModel = viewModel
        }
    }

}

extension CoinsViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CoinCell.reuseIdentifier, for: indexPath) as? CoinCell else {
            fatalError()
        }
        
        let viewModel = viewModel.viewModelForCell(at: indexPath.row)
        cell.configure(with: viewModel)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewModel = viewModel.viewModelForSelectedCell(at: indexPath.row)
        performSegue(withIdentifier: SegueIdentifier.toHistoricalCoin.rawValue, sender: viewModel)
    }
    
}
