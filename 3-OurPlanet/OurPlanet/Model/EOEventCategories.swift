//
//  EOEventCategories.swift
//  OurPlanet
//
//  Created by Stephen Cao on 7/10/19.
//  Copyright © 2019 Ray Wenderlich. All rights reserved.
//

import Foundation

struct EOEventCategories: Decodable {
  let categories: [EOCategory]
}

struct EOEvents: Decodable{
  let events: [EOEvent]
}
