//
//  Model.swift
//  ColorUserDefaults
//
//  Created by Ambroise COLLON on 08/10/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import Foundation

class Color {
    struct Keys {
        static let colorKey = "colorKey"
    }
    static var selected: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.colorKey) ?? "Rouge"
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.colorKey)
        }
    }
}
