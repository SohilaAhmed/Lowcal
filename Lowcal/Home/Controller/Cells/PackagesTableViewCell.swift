//
//  PackagesTableViewCell.swift
//  Lowcal
//
//  Created by Sohila on 04/06/2023.
//

import UIKit

class PackagesTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        desginTFView(view: cellView)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
 
    }

    func desginTFView(view: UIView){
        view.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.9294117647, blue: 0.9137254902, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
    }
}
