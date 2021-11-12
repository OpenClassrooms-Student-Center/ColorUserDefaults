//
//  Model.swift
//  ColorUserDefaults
//
//  Created by Ambroise COLLON on 08/10/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import Foundation

final class Color {

    // MARK: - Private

    enum Keys {
        static let colorKey = "colorKey"
    }

    // MARK: - Public

    var selected: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.colorKey) ?? "Rouge"
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.colorKey)
        }
    }
}
