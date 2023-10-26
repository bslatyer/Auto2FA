//
//  UNAuthorizationStatus+Extensions.swift
//  Auto2FA
//
//  Created by Braeden Slatyer on 27/10/23.
//

import Foundation
import UserNotifications

extension UNAuthorizationStatus {
  var permissionIsGranted: Bool {
    return self == .authorized || self == .provisional
  }
}
