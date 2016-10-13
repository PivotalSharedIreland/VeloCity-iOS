//
//  StationTests.swift
//  VeloCity
//
//  Created by Pivotal on 10/13/16.
//  Copyright © 2016 Pivotal. All rights reserved.
//

import Quick
import Nimble
@testable import VeloCity

class StationTests: QuickSpec {
    
    override func spec() {
        
        describe("Get list of stations") {
            
            it("should return static data") {
                let listOfStations: [Station] = Station.getList()
                
                expect(listOfStations.count).to(equal(3))
                
                expect(listOfStations[0].name).to(equal("CUSTOM HOUSE QUAY"))
                expect(listOfStations[1].name).to(equal("THE POINT"))
                expect(listOfStations[2].name).to(equal("CONVENTION CENTRE"))
            }
        }
        
    }
}
