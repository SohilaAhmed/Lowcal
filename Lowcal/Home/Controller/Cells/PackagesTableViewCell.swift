//
//  PackagesTableViewCell.swift
//  Lowcal
//
//  Created by Sohila on 04/06/2023.
//

import UIKit

class PackagesTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var selectPackageBtn: UIButton!
    
    var pressed: (()->())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectPackageBtn.setTitle("Select Package", for: .normal)
        desginView(view: cellView)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if (isSelected == true){
            contentView.backgroundColor = #colorLiteral(red: 0.9999999404, green: 1, blue: 0.9999999404, alpha: 1)
        }
    }

    @IBAction func selectPackageBtnAction(_ sender: Any) {
        pressed?() 
    }
    
    func desginView(view: UIView){
        view.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.9294117647, blue: 0.9137254902, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
    }
}
