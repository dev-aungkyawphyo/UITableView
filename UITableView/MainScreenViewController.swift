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
    
    var products = [
        Product(image: "ice_cream", name: "Ice-Cream", rating: 4, description: "This is the best I have ever tasted."),
        Product(image: "pizza", name: "Pizza", rating: 5, description: "This is the best I have ever tasted."),
        Product(image: "burger", name: "Burger", rating: 5, description: "This is the best I have ever tasted."),
        Product(image: "donut", name: "Donut", rating: 3, description: "This is the best I have ever tasted."),
        Product(image: "coffee", name: "Coffee", rating: 5, description: "This is the best I have ever tasted."),
        Product(image: "soda", name: "Soda", rating: 2, description: "This is the best I have ever tasted."),
        Product(image: "bread", name: "American Cousin Brown Bread", rating: 2, description: "This is the best I have ever tasted.")
    ]

    // MARK: Lifecycle
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
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as? ProductTableViewCell else {
            return UITableViewCell()
        }
        let product: Product = products[indexPath.row]
        cell.productImageView.image = UIImage(named: product.image ?? "")
        cell.productNameLabel.text = product.name
        cell.productRatingLabel.text = ""
        for _ in 1...(product.rating ?? 1) {
            cell.productRatingLabel.text = (cell.productRatingLabel.text ?? "") + "⭐️"
        }
        cell.productDescriptionLabel.text = product.description
        return cell
    }
    
}
