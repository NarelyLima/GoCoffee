//
//  Cafeterias.swift
//  Nnt- Go Coffe
//
//  Created by Narely Lima on 29/08/22.
//

import Foundation

struct Cafeterias: Decodable {
    var imageCafeteria: String
    var titleCafeteria: String
    var descCafeteria: String
}

let Coffees = """
[{
    "imageCafeteria": "Cafeteria 1",
    "titleCafeteria": "Cafeteria 1",
    "descCafeteria": "Essa cafeteria é linda"
},
 {
     "imageCafeteria": "Cafeteria 2",
     "titleCafeteria": "Cafeteria 2",
     "descCafeteria": "Essa cafeteria é maravilhosa"
 },
 {
     "imageCafeteria": "Cafeteria 3",
     "titleCafeteria": "Cafeteria 3",
     "descCafeteria": "Não gostei dessa cafeteria"
 },
 {
     "imageCafeteria": "Cafeteria 4",
     "titleCafeteria": "Cafeteria 4",
     "descCafeteria": "Achei muito cara"
 },
 {
     "imageCafeteria": "Cafeteria 5",
     "titleCafeteria": "Cafeteria 5",
     "descCafeteria": "Adorei o fato de ela ser bem aconchegante e instagramável"
 },
 {
     "imageCafeteria": "Cafeteria 6",
     "titleCafeteria": "Cafeteria 6",
     "descCafeteria": "Essa cafeteria é linda, mas o atendimento é péssimo"
 }, {
     "imageCafeteria": "Cafeteria 7",
     "titleCafeteria": "Cafeteria 7",
     "descCafeteria": "Eu ADOREI a vibe desse lugar fiquei sem palavras, ja que nao conseguia parar de comer"
 },
 {
     "imageCafeteria": "Cafeteria 8",
     "titleCafeteria": "Cafeteria 8",
     "descCafeteria": "Essa cafeteria é linda, mas a localizacao é horrível"
 },
 {
     "imageCafeteria": "Cafeteria 9",
     "titleCafeteria": "Cafeteria 9",
     "descCafeteria": "Essa cafeteria assaltou meu coraçao e meu bolso, mas vale cada centavo"

}]
"""

let cafeteriasData = Coffees.data(using: .utf8)!
let listaCafeterias: [Cafeterias] = try! JSONDecoder().decode([Cafeterias].self, from: cafeteriasData)
