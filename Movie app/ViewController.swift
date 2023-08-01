//
//  ViewController.swift
//  Movie app
//
//  Created by Swapnnil Kadam on 31/12/22.
//

import UIKit

var eData = [
    
    EntertainmentApp(sectionType: "Bollywood Movies", imageGallery: ["adipurush.jpeg", "Cirkus.jpeg", "rudra.jpeg", "pathan.jpeg", "maidaan.jpeg"]),
    EntertainmentApp(sectionType: "Marathi Movies", imageGallery: ["natrang.jpeg", "samantar.png", "nashibvan.jpeg", "natsamrat.jpeg", "panghrun.jpeg"]),
    EntertainmentApp(sectionType: "Web Series", imageGallery: ["abhay.jpeg", "apharan.jpeg", "human.jpeg", "panchayat.jpeg", "tandav.jpg"])
]


class ViewController: UIViewController {

    @IBOutlet weak var mytable: UITableView!
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return eData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mytable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.myCollectionView.tag = indexPath.section
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return eData[section].sectionType
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        header.textLabel?.textColor = UIColor.red
        header.textLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        header.textLabel?.frame = header.bounds
        header.textLabel?.textAlignment = .center
    }
    
}
