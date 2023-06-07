//
//  HomeTableViewCell.swift
//  Lowcal
//
//  Created by Sohila on 01/06/2023.
//

import UIKit

class RecommendedMealsTableViewCell: UITableViewCell {

    @IBOutlet weak var daysCollectionView: UICollectionView!{
        didSet{
            daysCollectionView.delegate = self
            daysCollectionView.dataSource = self
        }
    } 
    @IBOutlet weak var mealsCollectionView: UICollectionView!{
        didSet{
            mealsCollectionView.delegate = self
            mealsCollectionView.dataSource = self
        }
    }
    
    var selectedDaysCollection = 0
    var selectedDayClouser: (()->())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
         
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
 
    }

}

