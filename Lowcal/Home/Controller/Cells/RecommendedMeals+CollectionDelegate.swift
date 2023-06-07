//
//  RecommendedMeals+CollectionDelegate.swift
//  Lowcal
//
//  Created by Sohila on 04/06/2023.
//

import UIKit

extension RecommendedMealsTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == daysCollectionView){
            return 7
            
        }
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(collectionView == daysCollectionView){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DaysCollectionViewCell", for: indexPath) as! DaysCollectionViewCell
            if indexPath.row == selectedDaysCollection {
                cell.contentView.backgroundColor = #colorLiteral(red: 0.8509803922, green: 0.9294117647, blue: 0.9137254902, alpha: 1)
            } else {
                cell.contentView.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
            }
            return cell 
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MealsCollectionViewCell", for: indexPath) as! MealsCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView.cellForItem(at: indexPath) is DaysCollectionViewCell {
            
//            if selectedDaysCollection == indexPath.row {
//                return
//            }
//            
//            let previousIndexPath = IndexPath(row: selectedDaysCollection, section: 0)
//            let previousCell = collectionView.cellForItem(at: previousIndexPath)
//            previousCell?.contentView.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
//            
//            let currentCell = collectionView.cellForItem(at: indexPath)
//            currentCell?.contentView.backgroundColor = #colorLiteral(red: 0.8509803922, green: 0.9294117647, blue: 0.9137254902, alpha: 1)
            
            selectedDaysCollection = indexPath.row
            self.selectedDayClouser?()
            daysCollectionView.reloadData()
        }
    }
    
}

extension RecommendedMealsTableViewCell: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if(collectionView == daysCollectionView){
            return CGSize(width: 93, height: 38)
            
        }
        return CGSize(width: 162, height: 197)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.4
    }
     
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if(collectionView == daysCollectionView){
            return UIEdgeInsets(top: 3, left: 30, bottom: 3, right: 15)
            
        }
        return  UIEdgeInsets(top: 3, left: 25, bottom: 3, right: 15)
    }
}
