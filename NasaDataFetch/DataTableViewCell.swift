//
//  DataTableViewCell.swift
//  NasaDataFetch
//
//  Created by Created by udayvanaparthy on 2/19/22.
//

import UIKit

protocol DataTableViewCellDelegate: AnyObject {
    func showDetail()
}

class DataTableViewCell: UITableViewCell {

    weak var delegate: DataTableViewCellDelegate?
    
    @IBOutlet var titlelbl: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet var overViewLbl: UILabel!
    @IBOutlet weak var showDetailsBtn: UIButton!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(title: String?, overview: String?) {
        titlelbl.text = title
        overViewLbl.text = overview
    }
    
    @IBAction func showDetailsAction(_ sender: Any) {
        delegate?.showDetail()
   
        

    }
    
}
