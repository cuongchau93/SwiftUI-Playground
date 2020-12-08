//
//  Book.swift
//  SwiftUIHomeScreen
//
//  Created by Chau, Cuong | DCMS on 2020/12/08.
//  Copyright © 2020 Chau, Cuong | DCMS. All rights reserved.
//

import Foundation

struct Book: Hashable, Codable, Identifiable {
    var id = UUID()
    var name: String
    var imagePath: String
}
