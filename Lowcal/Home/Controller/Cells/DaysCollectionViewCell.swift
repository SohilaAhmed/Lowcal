//
//  DaysCollectionViewCell.swift
//  Lowcal
//
//  Created by Sohila on 04/06/2023.
//

import UIKit

class DaysCollectionViewCell: UICollectionViewCell {
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.contentView.layer.borderColor = #colorLiteral(red: 0.7058823529, green: 0.862745098, blue: 0.8392156863, alpha: 1)
        self.contentView.layer.borderWidth = 1
        self.contentView.layer.cornerRadius = 20
        self.contentView.layer.masksToBounds = true
    }
}
