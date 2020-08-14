//
//  Entry+Convenience.swift
//  Journal
//
//  Created by Norlan Tibanear on 8/9/20.
//  Copyright © 2020 Norlan Tibanear. All rights reserved.
//

import Foundation
import CoreData

enum EntryMood: String, CaseIterable {
    case happy
    case ok
    case sad
}


extension Entry {
    @discardableResult convenience init(identifier: String? = UUID().uuidString,
                                    title: String?,
                                    bodyText: String?,
                                    timestamp: Date? = Date(),
                                    mood: EntryMood = .ok,
                                    context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
    self.init(context: context)
    self.identifier = identifier
    self.title = title
    self.bodyText = bodyText
    self.timestamp = timestamp
    self.mood = mood.rawValue
    }
}
