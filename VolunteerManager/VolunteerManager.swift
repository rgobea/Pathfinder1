//
//  VolunteerManager.swift
//  VolunteerManager
//
//  Created by Paul Inventado on 2/23/22.
//  Student: Richard Gobea
//  CWID: 888236270
//  Email: rgobea@csu.fullerton.edu

import Foundation

// TODO: Fix the code based on the results of the unit test

struct VolunteerManager {
    /// private(set) indicates the variable can only be changed within the class
    private(set) var volunteers: [String:Int] = [:]
    
    mutating func volunteer(_ name: String, for hours: Int) {
        if hours < 0 {
            return 
        }
        if let volunteerHours = volunteers[name] {
            volunteers[name] = volunteerHours + hours
        } else {
            volunteers[name] = hours
        }
       if let volunteerHours = volunteers[name], volunteerHours > 20 {
            volunteers[name] = 20
        }
    }
        
}
