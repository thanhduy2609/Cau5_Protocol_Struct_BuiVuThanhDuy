//
//  Person.swift
//  Cau5_init_struct
//
//  Created by Cntt03 on 7/5/17.
//  Copyright © 2017 Cntt03. All rights reserved.
//

import Foundation


protocol FullyNamed {
    var fullName: String {
        get
    }
}

struct Person : FullyNamed{
    var fullName: String {
        return self.fullName
    }

        
    var age: Int
}

class XYZ : FullyNamed {
    var fullName: String {
        if (prefix == nil) {
            return self.name
        }
        else {
            return self.prefix! + " "  + self.name
        }
    }

    var prefix: String?
    var name: String
    
    //DI
    init(prefix: String?, name: String) {
        self.prefix = prefix
        self.name = name
        
        print(fullName)
    }
}
