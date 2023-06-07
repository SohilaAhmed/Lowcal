//
//  ChoosePackage+CollectionDelegate.swift
//  Lowcal
//
//  Created by Sohila on 04/06/2023.
//

import UIKit

extension ChoosePackageTableViewCell:UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PackagePeriodCollectionViewCell", for: indexPath) as! PackagePeriodCollectionViewCell
        if indexPath.row == selectedPackagePeriodCollection {
            cell.contentView.backgroundColor = #colorLiteral(red: 0.8509803922, green: 0.9294117647, blue: 0.9137254902, alpha: 1)
        } else {
            cell.contentView.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        }
        return cell
    }
     
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView.cellForItem(at: indexPath) is PackagePeriodCollectionViewCell {
            selectedPackagePeriodCollection = indexPath.row
            selectedPackagePeriodClouser?()
            packagePeriodCollectionView.reloadData()
        }
    }
}

extension ChoosePackageTableViewCell: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 93, height: 38)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.4
    }
     
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 3, left: 30, bottom: 3, right: 15)
    }
}
