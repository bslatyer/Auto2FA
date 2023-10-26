//
//  App.swift
//  Auto2FA
//
//  Created by Braeden Slatyer on 27/10/23.
//

import AppKit
import Foundation
import ServiceManagement

let store = Store(
  state: State(),
  reducer: reducer(state:action:environment:),
  environment: Environment.live
)

final class Delegate: NSObject, NSApplicationDelegate {
  func applicationDidFinishLaunching(_ notification: Notification) {
    store.send(action: .initialize)
    do {
      try SMAppService.mainApp.register()
    } catch {
      print(error)
    }
  }

  func applicationWillTerminate(_ notification: Notification) {
    store.send(action: .cleanup)
  }
}
