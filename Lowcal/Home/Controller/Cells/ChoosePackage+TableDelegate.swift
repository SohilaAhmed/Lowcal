//
//  ChoosePackage+TableDelegate.swift
//  Lowcal
//
//  Created by Sohila on 04/06/2023.
//

import UIKit

extension ChoosePackageTableViewCell:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PackagesTableViewCell", for: indexPath) as! PackagesTableViewCell
      
        
        if(self.selectedPackageTable == indexPath.row){
            cell.selectPackageBtn.setTitle("Selected", for: .normal)
            cell.selectPackageBtn.setImage(UIImage(named: "Path 6667"), for: .normal)
            
        }else{
            cell.selectPackageBtn.setTitle("Select Package", for: .normal)
            cell.selectPackageBtn.setImage(UIImage(), for: .normal)
        }
        
        cell.pressed = {
            self.selectedPackageTable = indexPath.row
            self.selectedPackageClouser?()
            self.packagesTableView.reloadData()
        }
            
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        385
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        if tableView.cellForRow(at: indexPath) is PackagesTableViewCell {
        //            if selectedPackageTable == indexPath.row {
        //                return
        //            }
        //
        //            let previousIndexPath = IndexPath(row: selectedPackageTable, section: 0)
        //            let previousCell = tableView.cellForRow(at: previousIndexPath) as? PackagesTableViewCell
        //            previousCell?.selectPackageBtnAction(previousCell?.selectPackageBtn)
        //
        //            let currentCell = tableView.cellForRow(at: indexPath) as? PackagesTableViewCell
        //            currentCell?.contentView.backgroundColor  = #colorLiteral(red: 0.9999999404, green: 1, blue: 0.9999999404, alpha: 1)
        //
        //
        //            selectedPackageTable = indexPath.row
        //        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        //        if tableView.cellForRow(at: indexPath) is PackagesTableViewCell {
        //
        //            let currentCell = tableView.cellForRow(at: indexPath) as? PackagesTableViewCell
        //            currentCell?.pressed = {
        //                print("fromClousre")
        //                currentCell?.contentView.backgroundColor  = #colorLiteral(red: 0.9999999404, green: 1, blue: 0.9999999404, alpha: 1)
        //                currentCell?.selectPackageBtn.setTitle("Select Package", for: .normal)
        //                currentCell?.selectPackageBtn.setImage(UIImage(), for: .normal)
        //            }
        //
        //        }
    }
    
}
