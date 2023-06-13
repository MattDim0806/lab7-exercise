//
//  tableViewDemoVC.swift
//  lab7-exercise
//
//  Created by 楊皓麟 on 2023/4/12.
//

import UIKit

class tableViewDemoVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var fruitNameArr : [String]?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewInit()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let userDefault = UserDefaults.standard
        fruitNameArr = userDefault.value(forKey: "fruitName") as? [String]
    }
    func tableViewInit(){
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseCell")
        let cellNib = UINib(nibName: "myTableViewCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "myTableViewCell")
    }
    
}

extension tableViewDemoVC:UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath) as! myTableViewCell
            let fruit = fruitNameArr?[indexPath.row]
            cell.setCell(imgname: fruit ?? "", title: fruit ?? "")
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCell", for:indexPath)
            cell.textLabel?.text = String(format: "第%d個cell", indexPath.row)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return fruitNameArr?.count ?? 0
        }
        else{
            return 20
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView:UITableView, titleForHeaderInSection section:Int) -> String? {
        if(section == 0){
            return "客製化table view cell"
        }
        else{
            return "系統內建table view cell"
        }
    }
}

extension tableViewDemoVC:UITableViewDelegate{
    func tableView(_ tableView:UITableView, heightForHeaderInSection section:Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView:UITableView, didSelectRowAt indexPath:IndexPath){
        print("您點擊了", indexPath.section, "-", indexPath.row)
        let cell = tableView.cellForRow(at: indexPath)!
        print("Cell的高度為"+String(Int(cell.bounds.size.height)))
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

