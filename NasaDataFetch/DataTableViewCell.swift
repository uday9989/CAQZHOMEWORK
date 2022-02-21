//
//  DataTableViewCell.swift
//  NasaDataFetch
//
//  Created by Created by udayvanaparthy on 2/19/22.
//

import UIKit

class DataTableViewCell: UITableViewCell {

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
    @IBAction func showDetailsAction(_ sender: Any) {
   
//        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

//        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("nextView") as MovieDetailsVC
//        self.presentViewController(nextViewController, animated:true, completion:nil)

    }
    
}
