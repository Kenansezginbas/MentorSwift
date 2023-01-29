//
//  HomeVC.swift
//  mentor
//
//  Created by Kenan Sezginbas on 9.01.2023.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath)
        cell.textLabel?.text = "Kenan"
        return cell
    }
    
    
    var customTableView: UITableView = {
        var tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CellID")
      
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()

    }
    
    
    final func configureUI() {
        view.addSubview(customTableView)
        customTableView.frame           = view.bounds
        customTableView.delegate        = self
        customTableView.dataSource      = self
        
        NSLayoutConstraint.activate([
            customTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            customTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            customTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                
        ])
    }

}
