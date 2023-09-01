//
//  CoffeeView.swift
//  Nnt- Go Coffe
//
//  Created by Narely Lima on 25/08/22.
//

import Foundation
import UIKit


class CoffeeView: UIViewController{

    var items = listaCafeterias

    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.isScrollEnabled = true
        tableView.separatorStyle = .singleLine
        tableView.delegate = self
        tableView.dataSource = self

        tableView.register(TableViewCoffee.self, forCellReuseIdentifier: TableViewCoffee.identifier)

        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(self.tableView)
        title = "Go Coffee"
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

extension CoffeeView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: TableViewCoffee.identifier,
            for: indexPath
            ) as? TableViewCoffee else {
        return UITableViewCell()}
        let coffee = self.items[indexPath.row]
        print(coffee)
        cell.imageViewFavorite.image = UIImage(named: coffee.imageCafeteria)
        cell.textLabelFavorite.text = coffee.titleCafeteria
        cell.descLabelFavorite.text = coffee.descCafeteria
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailView = DetailsCoffee()
        detailView.item = self.items[indexPath.row]
        navigationController?.pushViewController(detailView, animated: true)
        
    }
}
