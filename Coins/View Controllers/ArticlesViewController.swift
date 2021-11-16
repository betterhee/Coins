//
//  ViewController.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/15.
//

import UIKit
import SafariServices

final class ArticlesViewController: UIViewController {
    
    // MARK: - Properties

    private var viewModel: ArticlesViewModel!
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ArticlesViewModel(articlesUpdatedAction: {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        })
    }
    
}

// MARK: - Table View

extension ArticlesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ArticleCell.reuseIdentifier, for: indexPath) as? ArticleCell else {
            fatalError()
        }
        
        let viewModel = viewModel.viewModelForCell(at: indexPath.row)
        cell.configure(with: viewModel)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let url = viewModel.url(at: indexPath.row)
        let safariViewController = SFSafariViewController(url: url)
        present(safariViewController, animated: true, completion: nil)
    }
    
}
