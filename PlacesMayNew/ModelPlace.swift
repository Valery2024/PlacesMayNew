//
//  ModelPlace.swift
//  PlacesMayNew
//
//  Created by Valery on 12.09.2024.
//

import Foundation
//Для модели часто выбирают структуру потому что ее не нужно инициализировать
//image: String-потому что обращаемся к ним по имени файла -UIImage(named:
struct ModelPlace {
    var name: String
    var location: String
    var type: String
    var image: String

//Данный массив выполняет вспомогательную функцию
    static    let restauratnNames = ["Балкан Гриль", "Бочка",
                               "Вкусные истории", "Дастархан",
                               "Индокитай", "Классик", "Шок",
                               "Bonsai","Burger Heroes", "Kitchen","Love&Life","Morris Pub","Sherlock Holmes","Speak Easy","X.O"
        ]
    //метод ни чего не принимает но возврадщает массив с типом нашей структуры-[ModelPlace(name: , location: , type: "Restourant", image:  "")]
  static  func getPlaces()->[ModelPlace]{
        
       var places = [ModelPlace]()
        for restor in restauratnNames{
            places.append(ModelPlace(name: restor, location: "Sankt-Peterburg",  type: "Restourant", image: restor))
        }
      
        return places
    }
}
