//
//  ViewController2.swift
//  AppsTableViews
//
//  Created by Reuben Simphiwe Kuse on 2023/03/22.
//

import UIKit

class ViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    lazy var infoTableView2: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorInset = UIEdgeInsets(top: 0.0, left: 75, bottom: 0.0, right: 0.0)
        tableView.isScrollEnabled = true
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableViewConstraints2()
        registerCells()
    }
    
    func setupTableViewConstraints2() {
        view.addSubview(infoTableView2)
        
        infoTableView2.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        infoTableView2.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        infoTableView2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        infoTableView2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    func registerCells() {
        infoTableView2.register(MessageViews.self,forCellReuseIdentifier: "MessageViews")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else if section == 1 {
            return 3
        } else if section == 2 {
            return 2
        } else {
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userCell = tableView.dequeueReusableCell(withIdentifier: "MessageViews", for: indexPath) as! MessageViews
        return userCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(70)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let messageViews = MessageViews()
        present(messageViews, animated: true)
    }
}
