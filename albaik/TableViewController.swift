//
//  TableViewController.swift
//  albaik
//
//  Created by Yousef Alasmar on 04/05/1443 AH.
//

import UIKit

struct product {
    var title:String
    var details: String
    var cost : Double
    var imagproduct : UIImage?
}

class TableViewController: UITableViewController {
    var item: [product] = [product (title: "Chicken Fillet Burger", details: "Also available as a combo with fries and soft drink", cost: 22.0, imagproduct: UIImage.init(named: "burgar")),
                           product (title: "Fish Fillet Meal", details: "6 fish fillet pieces come with fries", cost: 15.0, imagproduct: UIImage.init(named: "fish")),
                           product (title: "Cocktail Sauce", details: "makes a delicious addition to any of our specialties", cost: 1.0, imagproduct: UIImage.init(named: "Sauce")),
                           product (title: "Ice Cream", details: "Creamy, velvety vanilla ice cream", cost: 2.0, imagproduct: UIImage.init(named: "IceCream"))]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "bannerCell",bundle:nil), forCellReuseIdentifier: "bannerID")
        
        tableView.register(UINib(nibName: "Products",bundle:nil), forCellReuseIdentifier: "ProductsID")
        tableView.rowHeight = 120

    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return item.count
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell : UITableViewCell!
        if (indexPath.section == 0) {
            let tablecell = tableView.dequeueReusableCell(withIdentifier: "bannerID") as! bannerCell
            return tablecell
        }
        else {
            let productscell = tableView.dequeueReusableCell(withIdentifier: "ProductsID") as! Products
            
            productscell.title.text = item[indexPath.row].title
            productscell.cost.text = String(item[indexPath.row].cost)
            productscell.descrption.text = String (item[indexPath.row].details)
            productscell.imagee.image = item[indexPath.row].imagproduct
            
            return productscell
        }
    }
}
