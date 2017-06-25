//
//  ViewController.swift
//  ThirdHomework_2
//
//  Created by Mac on 24.06.17.
//  Copyright © 2017 Web Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // MARK: - Arrays. Medium. Task 3
        let myIntArray: [Int] = [3, 6, 1, 2, 2, 6, 13, 77, 36]
        print("Arrays. Medium. Task 3")
        print(sortArrayAndRemoveDublicats(array: myIntArray))
    
        // MARK: - Arrays. Medium. Task 5
        print("Arrays. Medium. Task 4:")
        
        let myValue = "Masha"
        let secondLevelDict: [String: Int] = [
            "Bra size" : 3,
            "Weight" : 50
        ]
        
        let firstLevelDict: [String: [String: Int]] = [
            "Masha": secondLevelDict,
            ]
        
        print(returnValueFromDict(dict: firstLevelDict, value: myValue))

    
    }

    // MARK: - Function for Arrays. Medium. Task 3
    func sortArrayAndRemoveDublicats(array: [Int]) -> [Int] {
        
        var result: [Int] = []
        
        // checking if array consists of more than one item
        if array.count > 1 {
            var workArray = array
            
            // sorting in ascending from initial array to work array
            for i in 1..<workArray.count {
                var number = i
                let number2 = workArray[number]
                
                while number > 0 && number2 < workArray[number - 1] {
                    workArray[number] = workArray[number - 1]
                    number -= 1
                }
                
                workArray[number] = number2
            }
            
            // adding resulting array and appending first item from work array
            var resultArray: [Int] = []
            resultArray.append(workArray[0])
            
            // deleting dublicats while appending items from work array to result array
            for i in 1..<workArray.count {
                let number = i
                let number2 = workArray[number]
                
                if number2 == workArray[number - 1] {
                } else {
                    resultArray.append(number2)
                }
            }
            
            result = resultArray
            
        } else {
            result = array
        }
        return result
        
    }
    
    // MARK: - Function for Arrays. Medium. Task 3
    func returnValueFromDict(dict: [String: [String: Int]], value: String) -> [String: Int] {
        
        var dictValue: [String: Int] = [:]
        
        if let dictValueOne = dict[value] {
            dictValue = dictValueOne
            
        }
       return dictValue
    }

}

