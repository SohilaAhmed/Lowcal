//
//  Home+TableDelegate.swift
//  Lowcal
//
//  Created by Sohila on 01/06/2023.
//

import UIKit

extension HomeViewController: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecommendedMealsTableViewCell", for: indexPath) as! RecommendedMealsTableViewCell
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChoosePackageTableViewCell", for: indexPath) as! ChoosePackageTableViewCell
        cell.tableHeight.constant = (385 * 3) + cell.packagesTableView.rectForFooter(inSection: 0).size.height + cell.packagesTableView.rectForHeader(inSection: 0).size.height
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return "Recommended meals"
        case 1:
            return "Choose package"
        default:
            return nil
        }
    }
    
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let headerView = view as? UITableViewHeaderFooterView {
            headerView.textLabel?.textColor = #colorLiteral(red: 0, green: 0, blue: 0.06274509804, alpha: 1)
            headerView.backgroundView = UIView(frame: headerView.bounds)
            headerView.backgroundView?.backgroundColor = .white
        }
    }
}
