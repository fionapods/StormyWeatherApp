//
//  DarkSkyError.swift
//  Stormy
//
//  Created by Fiona Podrima on 8/1/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

enum DarkSkyError: Error {
    case requestFailed
    case responseUnsuccessful(statusCode: Int)
    case invalidData
    case jsonParsingFailure
    case invalidUrl
}
