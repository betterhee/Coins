//
//  CoinDetailViewController.swift
//  Coins
//
//  Created by 홍다희 on 2021/11/17.
//

import UIKit
import Charts
import SwiftUI

final class HistoricalCoinViewController: UIViewController {
    
    // MARK: - Properties
    
    var viewModel: HistoricalCoinViewModel!
    
    @IBOutlet weak var coinLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var chartView: LineChartView!
    @IBOutlet weak var durationSegmentedControl: UISegmentedControl!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewModel()
        setupView()
    }
    
    // MARK: Setup
    
    private func setupViewModel() {
        viewModel.didReceiveHistoricalCoin = { chartDatas, duration in
            let entries = chartDatas.map { ChartDataEntry(x: $0.0, y: $0.1)}
            let dataSet = LineChartDataSet(entries: entries)
            dataSet.mode = .horizontalBezier
            dataSet.colors = [UIColor.systemBlue]
            dataSet.drawCirclesEnabled = false
            dataSet.drawCircleHoleEnabled = false
            dataSet.drawValuesEnabled = false
            dataSet.drawHorizontalHighlightIndicatorEnabled = false
            
            let startColor = UIColor.systemBlue
            let endColor = UIColor(white: 1, alpha: 0.3)
            let gradientColor = [startColor.cgColor, endColor.cgColor] as CFArray
            let colorLocations: [CGFloat] = [1.0, 0.0]
            let gradient = CGGradient.init(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: gradientColor, locations: colorLocations)
            dataSet.fill = Fill.fillWithRadialGradient(gradient!)
            dataSet.drawFilledEnabled = true
            
            let data = LineChartData(dataSet: dataSet)
            self.chartView.data = data
        }
        viewModel.didSelectChartValue = { price in
            self.priceLabel.text = price
        }
    }
    
    
    private func setupView() {
        coinLabel.text = viewModel.title
        setupChartView()
        setupDurationSegmentedControl()
    }
    
    private func setupDurationSegmentedControl() {
        durationSegmentedControl.backgroundColor = .white
        durationSegmentedControl.selectedSegmentTintColor = .systemBlue
        let normalTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemGray]
        durationSegmentedControl.setTitleTextAttributes(normalTitleTextAttributes, for:.normal)
        let selectedTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        durationSegmentedControl.setTitleTextAttributes(selectedTitleTextAttributes, for:.selected)
        durationSegmentedControl.sendActions(for: .valueChanged)
    }
    
    private func setupChartView() {
        let xAxis = chartView.xAxis
        xAxis.drawGridLinesEnabled = false
        xAxis.drawAxisLineEnabled = true
        xAxis.drawLabelsEnabled = true
        xAxis.labelPosition = .bottom
        
        let leftYAxis = chartView.leftAxis
        leftYAxis.drawGridLinesEnabled = false
        leftYAxis.drawAxisLineEnabled = false
        leftYAxis.drawLabelsEnabled = false
        
        let rightYAxis = chartView.rightAxis
        rightYAxis.drawGridLinesEnabled = false
        rightYAxis.drawAxisLineEnabled = false
        rightYAxis.drawLabelsEnabled = false
        
        chartView.doubleTapToZoomEnabled = false
        chartView.legend.enabled = false
        chartView.delegate = self
    }
    
    // MARK: - Actions
    
    @IBAction func durationSegmentedControlDidTap(_ sender: UISegmentedControl) {
        viewModel.selectDuration(at: sender.selectedSegmentIndex)
    }
    
}

// MARK: - ChartViewDelegate

extension HistoricalCoinViewController: ChartViewDelegate {
    
    public func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight) {
        viewModel.selectChartValue(entry.y)
    }
    
}
