//
//  HomeModel.swift
//  DemoTask
//
//  Created by Devendra Agarwal on 01/09/20.
//  Copyright © 2020 Devendra Agarwal. All rights reserved.
//
//  Created by Devendra Agarwal on 01/09/20.
//  Copyright © 2020 Devendra Agarwal. All rights reserved.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let homeViewModel = try? newJSONDecoder().decode(HomeViewModel.self, from: jsonData)

import Foundation

// MARK: - HomeModel
struct HomeModel: Codable {
    let offerArray, catoryArray, bestSellingArray, recommendedArray: [String]
}
