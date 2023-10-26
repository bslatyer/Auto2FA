//
//  App.swift
//  Auto2FA
//
//  Created by Braeden Slatyer on 27/10/23.
//

import SwiftUI

@main
struct App: SwiftUI.App {
  @NSApplicationDelegateAdaptor(Delegate.self) var delegate

  var body: some Scene {
    MenuBarExtra {
      MenuBarView().environmentObject(store)
    } label: {
      Image(systemName: "lock.rectangle.stack")
    }
  }
}
