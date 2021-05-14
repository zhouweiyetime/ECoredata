//
//  Student+ViewModel.swift
//  Universities
//
//  Created by Weiye Zhou on 14/5/21.
//

import Foundation
import CoreData

extension Student {
    //Non-optional ViewModel name property
    var nameString: String{
        get { name ?? "" }
        set { name = newValue }
    }
    
}

