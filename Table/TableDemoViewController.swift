//
//  TableDemoViewController.swift
//  Table
//
//  Created by MusaIstema on 10.09.2024.
//

import UIKit

class TableDemoViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var array = [1,2,3,4,5,5,7,78,8,10,320,345]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension TableDemoViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as? DemoTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(with: "\(array[indexPath.row])")
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row % 2 == 0 {
            return 50
        }
        return 100
    }
    
}
