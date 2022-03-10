//
//  VolunteerManagerTests.swift
//  VolunteerManagerTests
//
//  Created by Paul Inventado on 2/23/22.
//

import XCTest
@testable import PathfinderClass


class Tests_iOS: XCTestCase {
    func testCurrentNode(){
            let pathfinder1 = pathfinder(node1: 2, node2: 5)
            XCTAssertEqual(pathfinder1.current_node,2)
        }

    func testDestinationNode(){
    let pathfinder1 = pathfinder(node1: 2, node2: 5)
    XCTAssertEqual(pathfinder1.destination_node, 5)
}


    func testEmptyCurrent(){
    let pathfinder1 = pathfinder(node1: 0, node2: 0)
       XCTAssertEqual(pathfinder1.current_node, 0)
    }
    
    func testEmptyDestination(){
    let pathfinder1 = pathfinder(node1: 0, node2: 0)
       XCTAssertEqual(pathfinder1.destination_node, 0)
    }
}
