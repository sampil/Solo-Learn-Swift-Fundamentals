//
//  Item.swift
//  SoloLearn
//
//  Created by Семен Пилюков on 13.03.17.
//  Copyright © 2017 Семен Пилюков. All rights reserved.
//

import Foundation

class Item: NSObject, NSCoding {
    var name: String?
    
    static let Dir = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = Dir.appendingPathComponent("items")
    
    // Name:String? optional because it could be nil
    required init(name:String?) {
        self.name = name
    }
    
    func encode(with aCoder: NSCoder) {
        // in Swift 3 the .encodeObject() method is updated to encode (object: Any?)
        aCoder.encode(name, forKey: "name")
    }
    
    required init?(coder aDecoder: NSCoder) {
        // Slight update modification of Jose Guerrero's post where as! was used
        // note in Swift 3, xcode 8.2.1 the as! is required to be as?
        self.name = aDecoder.decodeObject(forKey: "name") as? String
    }
}
