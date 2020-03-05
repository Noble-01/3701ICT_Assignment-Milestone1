//
//  Potato.swift
//  Milestone1
//
//  Created by Zac Cripps on 5/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//
struct Potato {
    let name:String
    let scienceName:String
    let family:String
    let weight: String
    let nutrition:String

    init(name:String, family:String, weight:String, scienceName:String, nutrition:String) {
        self.name = name
        self.family  = family
        self.weight = weight
        self.scienceName = scienceName
        self.nutrition = nutrition
    }
}
