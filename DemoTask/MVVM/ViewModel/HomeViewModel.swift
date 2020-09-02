//
//  HomeViewModel.swift
//  DemoTask
//
//  Created by Devendra Agarwal on 01/09/20.
//  Copyright © 2020 Devendra Agarwal. All rights reserved.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let homeViewModel = try? newJSONDecoder().decode(HomeViewModel.self, from: jsonData)

import Foundation


/// HomeViewModel class used to manage Api calling and send data to controller

class HomeViewModel : NSObject {
    
    /// handle success response from json api
    var modelHomeData = [HomeModel]()
    
    /// handle error and other
    var showAlertClosure: ((String)->())?
    
    /// function to get data from json file
    func getDataFromjSOnFile() {
        if let path = Bundle.main.path(forResource: "response", ofType: "json") {
            do {
                let fileUrl = URL(fileURLWithPath: path)
                // Getting data from JSON file using the file URL
                let data = try Data(contentsOf: fileUrl, options: .mappedIfSafe)
                let user = try JSONDecoder().decode(HomeModel.self, from: data as Data)
                modelHomeData = [user]
            } catch {
                print("error data")
            }
        }
    }
}
