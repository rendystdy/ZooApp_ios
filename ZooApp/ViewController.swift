//
//  ViewController.swift
//  ZooApp
//
//  Created by Rendy Setiadi on 05/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayTitle = ["Ayam", "Babi", "Hamster", "Kambing"]
    var arraySubTitle = ["ini Ayam", "ini Babi", "ini Hamster", "ini Kambing"]
    
    var arrayImage = [UIImage(named: "ayam")!,UIImage(named: "babi")!,UIImage(named: "kambing")! ,UIImage(named: "kelinci")!]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.navigationItem.title = "Zoo App"
    }


}


extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.titleCell.text = arrayTitle[indexPath.row]
        cell.subTitleCell.text = arraySubTitle[indexPath.row]
        cell.imageCell.image = arrayImage[indexPath.row]
        
        cell.imageCell.layer.cornerRadius = cell.imageCell.frame.height / 2
        cell.imageCell.clipsToBounds = true
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "detailController") as! DetailController
        
        controller.detailImage = arrayImage[indexPath.row]
        controller.detailTitle = arrayTitle[indexPath.row]
        controller.detailSubtitle = arraySubTitle[indexPath.row]
        
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    
    
    
}
