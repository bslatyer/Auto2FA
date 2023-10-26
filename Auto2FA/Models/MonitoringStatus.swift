//
//  MonitoringStatus.swift
//  Auto2FA
//
//  Created by Braeden Slatyer on 27/10/23.
//

import Foundation

enum MonitoringStatus {
  case active
  case paused
  case needPermissions(messages: Bool, notifications: Bool)

  func toggle() -> MonitoringStatus {
    switch self {
    case .active:
      return .paused
    case .paused:
      return .active
    case .needPermissions:
      return self
    }
  }
}
