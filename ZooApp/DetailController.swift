//
//  DetailControllerViewController.swift
//  ZooApp
//
//  Created by Rendy Setiadi on 09/04/23.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var titleDetail: UILabel!
    @IBOutlet weak var subTitleDetail: UILabel!
    
    var detailImage:UIImage?
    var detailTitle:String?
    var detailSubtitle:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageDetail.image = detailImage
        titleDetail.text = detailTitle
        subTitleDetail.text = detailSubtitle
        
        self.navigationItem.title = detailTitle

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
