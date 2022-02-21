//
//  ViewController.swift
//  NasaDataFetch
//
//  Created by Created by udayvanaparthy on 2/19/22.

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        

    }
    
    @IBAction func saveBtnAction(_ sender: Any) {
  
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destinationVC = storyboard.instantiateViewController(withIdentifier: "Details")
        self.navigationController?.pushViewController(destinationVC, animated: true)

    }

}



