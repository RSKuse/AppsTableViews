//
//  ViewController.swift
//  AppsTableViews
//
//  Created by Reuben Simphiwe Kuse on 2023/03/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    /// TableView Styles
    /// - plain
    /// - grouped
    /// - insertGrouped
    lazy var infoTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.dataSource = self
        tableView.delegate = self
        // tableView.separatorColor = .red
        tableView.separatorInset = UIEdgeInsets(top: 0.0, left: 75, bottom: 0.0, right: 0.0)
        tableView.isScrollEnabled = true
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableViewConstraints()
        registerCells()
    }
    
    func setupTableViewConstraints() {
        view.addSubview(infoTableView)
        
        infoTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        infoTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        infoTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        infoTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    func registerCells() {
        infoTableView.register(AppTableViews.self,forCellReuseIdentifier: "AppTableViews")
    }
    
    
    // ##### Number of Sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    // ##### Number of Sections
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else if section == 1 {
            return 5
        } else if section == 2 {
            return 7
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userCell = tableView.dequeueReusableCell(withIdentifier: "AppTableViews", for: indexPath) as! AppTableViews
        return userCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(70)
    }
    
    // ##### Selecting a Cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // print(indexPath)

        // ##### navigation to another scree / viewController
        let cardanoViewController = CardanoViewController()
        present(cardanoViewController, animated: true)
    }
}
