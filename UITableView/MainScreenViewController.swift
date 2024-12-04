//
//  ViewController.swift
//  UITableView
//
//  Created by Aung Kyaw Phyo on 05/12/2024.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var productTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        defaultSetup()
    }
    
    private func defaultSetup() {
        tableViewSetup()
    }
    
    private func tableViewSetup() {
        productTable.delegate = self
        productTable.dataSource = self
    }


}

extension MainScreenViewController: UITableViewDelegate {
    
}

extension MainScreenViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as? ProductTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
    
}
