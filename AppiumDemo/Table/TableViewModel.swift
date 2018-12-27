//
//  TableViewModel.swift
//  AppiumDemo
//
//  Created by BS on 12/21/18.
//  Copyright © 2018 BS. All rights reserved.
//

import Foundation

struct TableViewModel {
    let cells = (0...4).compactMap { "Cell number #\($0)" }
}
