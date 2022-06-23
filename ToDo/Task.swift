//
//  Task.swift
//  ToDo
//
//  Created by E2318556 on 25/12/2564 BE.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
