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

    func testModel() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
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
    func testPotatoName(){
        let potatoName = "Kipfler"
        let potato = Potato(name:potatoName)
        XCTAssert(potato.name == potatoName)
    }
    func testPotatoWeight(){
        let potatoWeight = "20grams"
        let potato = Potato(weight:potatoWeight)
        XCTAssert(potato.weight == potatoWeight)
    }
    func testPotatoScienceName(){
        let potatoScienceName = "Solanum tuberosum"
        let potato = Potato(scienceName: potatoScienceName)
        XCTAssertEqual(potato.scienceName,potatoScienceName)
    }
    func testPotatoNutrition(){
        let potatoNutrition = "manganese, potassium and vitamin C"
        let potato = Potato(nutrition: potatoNutrition)
        XCTAssertEqual(potato.nutrition,potatoNutrition)
    }
    func testFamily(){
        let potatoFamily = "Sweet Potato"
        let potato = Potato(family:potatoFamily)
        XCTAssertEqual(potato.family,potatoFamily)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
