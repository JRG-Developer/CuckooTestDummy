//
//  TestDummy.swift
//  CuckooTestDummy
//
//  Created by Joshua Greene on 3/18/16.
//  Copyright © 2016 JRG-Developer. All rights reserved.
//

import UIKit

class TestDummy: NSObject, NSCoding {

    let name: String
    let url: NSURL
    
    init(name: String, url: NSURL) {
        self.name = name
        self.url = url
    }
    
    // MARK: - NSCoding
    
    convenience required init?(coder aDecoder: NSCoder) {
        
        guard let name = aDecoder.decodeObjectForKey("name") as? String,
            let url = aDecoder.decodeObjectForKey("url") as? NSURL else {
                return nil
        }
        
        self.init(name: name, url: url)
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        
        aCoder.encodeObject(name, forKey: "name")
        aCoder.encodeObject(url, forKey: "url")
    }
}
