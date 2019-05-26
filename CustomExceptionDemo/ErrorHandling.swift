//
//  ErrorHandling.swift
//  CustomExceptionDemo
//
//  Created by Anurag Kashyap on 26/05/19.
//  Copyright © 2019 Anurag Kashyap. All rights reserved.
//

import Foundation

enum LoginCustomError : Error {
    case invalidForm
    case invalidEmailID
    case invalidPassword
}
