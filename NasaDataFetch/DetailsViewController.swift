//
//  DetailsViewController.swift
//  NasaDataFetch
//
//  Created by Created by udayvanaparthy on 2/19/22.
//

import Foundation
import UIKit

class DetailsViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var MoviesTbl: UITableView!
    var moviesArray = [NewMovies]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        getJson() { (json) in
            print(json)
            self.moviesArray = json
            DispatchQueue.main.async {
                self.MoviesTbl.reloadData()
            }
            
        }
    }
    
    
    @objc func switchValueDidChange(sender:UISwitch!) {
        print(sender.isOn)
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
         return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "DataTableViewCell") as? DataTableViewCell {

            return cell
            }
        else {
                return UITableViewCell()
            }

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
//        if let data_dict = self.photosArray[indexPath.row] as? NewPhotos {
//
//            let vc = storyboard?.instantiateViewController(withIdentifier: "detailsVC") as? DetailsViewController
//            DispatchQueue.main.async {
//                let URLStr = data_dict.img_src
//                let data = NSData(contentsOf: NSURL(string: URLStr!)! as URL)
//                vc?.newImage = UIImage(data: data! as Data) //Now it will work if vc.image is an UIImageView
//                self.navigationController?.pushViewController(vc!, animated: true)
//            }
//
//        }
    }
}



