//
//  ListModel.swift
//  cd-switft-ui
//
//  Created by Patryk Mikolajczyk on 05/06/2019.
//  Copyright © 2019 canaldigital. All rights reserved.
//

import Foundation


struct ListModel<T: Hashable & Codable>: Hashable & Codable & Equatable {
    let title: String
    let data: [T]
}

extension ListModel where T == String {
    static var mock = ListModel(title: "Mock", data: (1...30).map { "example: \($0)"})
}

extension ListModel where T == ListModel<String> {
    static var mock = ListModel<ListModel<String>>(title: "1", data: (1...100).map { _ in ListModel<String>.mock })
}
