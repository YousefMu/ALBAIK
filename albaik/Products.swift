//
//  Products.swift
//  albaik
//
//  Created by Yousef Alasmar on 04/05/1443 AH.
//

import UIKit

class Products: UITableViewCell {

    @IBOutlet weak var imagee: UIImageView!
    
    @IBOutlet weak var descrption: UILabel!
    @IBOutlet weak var cost: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBAction func add(_ sender: Any) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
