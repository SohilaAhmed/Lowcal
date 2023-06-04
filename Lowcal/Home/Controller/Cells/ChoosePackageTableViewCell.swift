//
//  ChoosePackageTableViewCell.swift
//  Lowcal
//
//  Created by Sohila on 04/06/2023.
//

import UIKit

class ChoosePackageTableViewCell: UITableViewCell {

    @IBOutlet weak var packagePeriodCollectionView: UICollectionView!{
        didSet{
            packagePeriodCollectionView.delegate = self
            packagePeriodCollectionView.dataSource = self
        }
    }
    @IBOutlet weak var packagesTableView: UITableView!{
        didSet{
            packagesTableView.delegate = self
            packagesTableView.dataSource = self
        }
    }
    
    @IBOutlet weak var tableHeight: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
 
    }

}



