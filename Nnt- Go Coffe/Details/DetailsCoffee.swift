//
//  DetailsCoffee.swift
//  Nnt- Go Coffe
//
//  Created by Narely Lima on 29/08/22.
//


import UIKit

class DetailsCoffee: UIViewController {
    var item: Cafeterias?

    lazy var imageViewDetails: UIImageView = {

        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    lazy var descLabelDetails: UILabel = {
        let desc = UILabel()
        desc.translatesAutoresizingMaskIntoConstraints = false
        desc.textColor = .black
        desc.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        return desc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        if let item = item {
            title = item.titleCafeteria

            navigationController?.navigationBar.prefersLargeTitles = true

            view.addSubview(imageViewDetails)
            view.addSubview(descLabelDetails)
            imageViewDetails.image = UIImage(named: item.imageCafeteria)
            descLabelDetails.text = item.descCafeteria
            configImage()
            configDesc()
            configImageView()
            configDescView()
        }

    }
    func configImage() {
        imageViewDetails.layer.cornerRadius = 50
        imageViewDetails.clipsToBounds = true
    }

    func configDesc() {
        descLabelDetails.numberOfLines = 3
        descLabelDetails.adjustsFontSizeToFitWidth = true
    }
    func configImageView() {
        NSLayoutConstraint.activate([
        imageViewDetails.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
        imageViewDetails.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        imageViewDetails.heightAnchor.constraint(equalToConstant: 100),
        imageViewDetails.widthAnchor.constraint(equalToConstant: 100)
        ])
        
    }

    func configDescView() {
        NSLayoutConstraint.activate([
        descLabelDetails.bottomAnchor.constraint(equalTo: imageViewDetails.topAnchor),
        descLabelDetails.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
}
