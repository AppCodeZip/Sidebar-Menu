//
//  MenuViewController.swift
//  Sidebar Menu
//
//  Created by Sushil Rathaur on 09/06/20.
//  Copyright © 2020 AppCodeZip. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    var imageHeaderView: ImageHeaderView!
    var delegate : MenuDelegate?
    
    @IBOutlet weak var tableView: UITableView!
    var menus : Array = [["txtMenu":"Home", "imgMenu":"home"],["txtMenu":"SiteMap", "imgMenu":"sitemap"],["txtMenu":"Google Search", "imgMenu":"google"],["txtMenu":"About Us", "imgMenu":"about"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.separatorStyle = .none
             
        tableView.register(UINib(nibName: "menuCell", bundle: nil), forCellReuseIdentifier: "menuCell")
        self.imageHeaderView = ImageHeaderView.loadNib()
               self.view.addSubview(self.imageHeaderView)
        self.tableView.tableFooterView = UIView()
        self.tableView.rowHeight = 60
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.imageHeaderView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 200)//160
        self.view.layoutIfNeeded()
    }

}
extension MenuViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! menuCell
        cell.setData(menus[indexPath.row] as [String :AnyObject])
        return cell
    }
}
extension MenuViewController : UITableViewDelegate {
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    delegate?.menuHandler(index: indexPath.row + 1 )

}
}
