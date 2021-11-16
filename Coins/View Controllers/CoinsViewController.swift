//
//  CoinsViewController.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/15.
//

import UIKit

final class CoinsViewController: UIViewController {

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

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
    
}
