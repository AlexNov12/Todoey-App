//
//  Category.swift
//  Todoey
//
//  Created by Александр Новиков on 26.02.2024.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    // Это создание Листа(что-то из Realmа) для работы one-to-many и у нас есть обратная история в Item
    let items = List<Item>()
}
