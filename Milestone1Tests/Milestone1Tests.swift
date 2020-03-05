//
//  Project1Tests.swift
//  Project1Tests
//
//  Created by Zac Cripps on 2/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//

import XCTest
@testable import Milestone1

class Project1Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
//functions used to test the struct and the values that are given to the variables disbaled on screen
    func testModel() {
        let potatoName = "Kipfler"
        let potatoWeight = "20grams"
        let potatoScienceName = "Solanum tuberosum"
        let potatoNutrition = "manganese, potassium and vitamin C"
        let potatoFamily = "Sweet Potato"
        let potato = Potato(name:potatoName, family:potatoFamily, weight:potatoWeight, scienceName: potatoScienceName, nutrition: potatoNutrition)

        XCTAssert(potato.name == potatoName)
        XCTAssert(potato.weight == potatoWeight)
        XCTAssertTrue(potato.scienceName.count != 0)
        XCTAssertEqual(potato.scienceName,potatoScienceName)
        XCTAssertEqual(potato.nutrition,potatoNutrition)
        XCTAssertEqual(potato.family,potatoFamily)
    }
    //the struct test is broken down into individual test functions for each element on the phone
    func testPotatoName(){
        let potatoName = "Kipfler"
        let potato = Potato(name:potatoName, family:"Sweet Potato", weight:"20grams", scienceName: "Solanum tuberosum", nutrition: "manganese, potassium and vitamin C")

        XCTAssert(potato.name == potatoName)
    }
    func testPotatoWeight(){
        let potatoWeight = "20grams"
        let potato = Potato(name:"Kipfler", family:"Sweet Potato", weight:potatoWeight, scienceName: "Solanum tuberosum", nutrition: "manganese, potassium and vitamin C")
        XCTAssert(potato.weight == potatoWeight)
    }
    func testPotatoScienceName(){
        let potatoScienceName = "Solanum tuberosum"
        let potato = Potato(name:"Kipfler", family:"Sweet Potato", weight:"20grams", scienceName: potatoScienceName, nutrition: "manganese, potassium and vitamin C")
        XCTAssertEqual(potato.scienceName,potatoScienceName)
    }
    func testPotatoNutrition(){
        let potatoNutrition = "manganese, potassium and vitamin C"
        let potato = Potato(name:"Kipfler", family:"Sweet Potato", weight:"20grams", scienceName: "Solanum tuberosum", nutrition: potatoNutrition)
        XCTAssertEqual(potato.nutrition,potatoNutrition)
    }
    func testFamily(){
        let potatoFamily = "Sweet Potato"
        let potato = Potato(name:"Kipfler", family:potatoFamily, weight:"20grams", scienceName: "Solanum tuberosum", nutrition: "manganese, potassium and vitamin C")
        XCTAssertEqual(potato.family,potatoFamily)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
