//
//  DataService.swift
//  coder-swag
//
//  Created by ioannis giannakidis on 30/03/2018.
//  Copyright © 2018 ioannis giannakidis. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    private let categories =  [Category(title: "SHIRTS", imageName: "shirts.png"),
                               Category(title: "HOODIES", imageName: "hoodies.png"),
                               Category(title: "HATS", imageName: "hats.png"),
                               Category(title: "DIGITAL", imageName: "digital.png")]
    
    private let hats = [Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
                        Product(title: "DevsLopes Logo HAt Black", price: "$22", imageName: "hat02.png"),
                        Product(title: "Devslopes Logo HAt White", price: "$22", imageName: "hat03.png"),
                        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")]
    private let hoodies = [Product(title: "Devslopes Logo hoddie Grey", price: "$32", imageName: "hoodie01.png"),
                           Product(title: "Devslopes Logo hoddie Red", price: "$32", imageName: "hoodie02.png"),
                           Product(title: "Devslopes hoodie  Grey", price: "$32", imageName: "hoodie03.png"),
                           Product(title: "Devslopes hoodie black", price: "$32", imageName: "hoodie04.png")]
    
    private let shirts = [Product(title: "Devslopes Logo shirt Black", price: "$18", imageName: "shirt01.png"),
                          Product(title: "Devslopes Logo Bagle shirt Light Grey", price: "$19", imageName: "shirt02.png"),
                          Product(title: "Devslopes Logo shirt red", price: "$18", imageName: "shirt03.png"),
                          Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
                          Product(title: "Kickglip Studios Black", price: "$18", imageName: "shirt05.png")]
    private let digitalGoods = [Product]()
    
    func  getCategories()->[Category] {
        return categories
    }
    func getProducts(forCategoryTitle title:String)->[Product]{
        switch title {
        case "SHIRTS":
          return  getShirts()
        case "HATS":
           return getHats()
        case "HOODIES":
           return getHoodies()
        case "DIGITAL":
           return getDigitalGoods()
        default:
           return getShirts()
        }
    }
    
    func getHats()->[Product]{
        return hats
    }
    func getHoodies()->[Product]{
        return hoodies
    }
    func getShirts()->[Product]{
        return  shirts
    }
    func getDigitalGoods()->[Product]{
        return digitalGoods
    }
}
