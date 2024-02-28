//
//  Item.swift
//  Todoey
//
//  Created by Александр Новиков on 26.02.2024.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    // Обратная история, тип - Catergory.self, а значение, это константа, которая была создана в Catergory
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
