//
//  Magazine+CoreDataProperties.swift
//  UI Street
//
//  Created by Protek 2 on 11/9/15.
//  Copyright © 2015 Amandeep Brar. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Magazine {

    @NSManaged var image: String?
    @NSManaged var url: String?

}
