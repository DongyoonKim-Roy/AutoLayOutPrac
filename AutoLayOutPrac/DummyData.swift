//
//  DummyData.swift
//  AutoLayOutPrac
//
//  Created by Roy's Saxy MacBook on 2/6/23.
//

import Foundation
import Fakery

//Fakery is to create dummyData

struct DummySection{
    let uuid : UUID
    let title : String
    let body : String
    let rows : [DummyData]
    
    init() {
        self.uuid = UUID()
        self.title = "Section Title \(uuid)"
        self.body = "Section Body \(uuid)"
        self.rows = DummyData.getDummy(5)
    }
    
    static func getDummy(_ count : Int = 5) -> [DummySection] {
        return (1...count).map{_ in DummySection()}
    }
}


struct DummyData{
    let uuid : UUID
    let title : String
    let body : String
    
    
    init() {
        self.uuid = UUID()
        let faker = Faker(locale: "nb-NO")
        let firstName = faker.name.firstName()
        let lastName = faker.name.lastName()
        let body = faker.lorem.paragraphs(amount: 5) // Default = 3
        
        self.title = "Title \(lastName) \(firstName)"
        self.body = "Body \(body)"
    }
    
    static func getDummy(_ count : Int = 5) -> [DummyData] {
        return (1...count).map{_ in DummyData()}
    }
}
