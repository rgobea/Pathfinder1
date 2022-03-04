//
//  VolunteerManagerTests.swift
//  VolunteerManagerTests
//
//  Created by Paul Inventado on 2/23/22.
//

import XCTest
@testable import VolunteerManager

class VolunteerManagerTests: XCTestCase {

    // TODO: Create your unit tests    
    func testZeroHours(){
        var manager1 = VolunteerManager()
        manager1.volunteer("Richard", for: -1)
        XCTAssertEqual(manager1.volunteers["Richard"], nil)
    }
    func testOver20(){
        var manager1 = VolunteerManager()
        manager1.volunteer("Richard", for: 30)
        XCTAssertEqual(manager1.volunteers["Richard"], 20)
    }
    func testAlreadyExists(){
        var manager1 = VolunteerManager()
        manager1.volunteer("Richard", for: 5)
        manager1.volunteer("Richard", for: 5)
        XCTAssertEqual(manager1.volunteers["Richard"], 10)
    }
}
