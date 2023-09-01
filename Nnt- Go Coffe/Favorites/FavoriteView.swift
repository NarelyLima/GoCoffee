//
//  FavoritosView.swift
//  Nnt- Go Coffe
//
//  Created by Narely Lima on 25/08/22.
//

import Foundation
import UIKit

class FavoriteView: UIViewController{

    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.isScrollEnabled = true
        tableView.separatorStyle = .singleLine
        tableView.delegate = self
        tableView.dataSource = self

        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)

        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(self.tableView)
        title = "Favoritos"
        navigationController?.navigationBar.prefersLargeTitles = true
        configConstraints()
    }

    private func configConstraints() {
        NSLayoutConstraint.activate([
            self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
}

extension FavoriteView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell( withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
