import AppKit
import AutographeCore
import SwiftUI

@main
struct AutographeApp: App {
    @State private var model = EditorModel()

    init() {
        // Tell macOS this is a full GUI app.
        NSApplication.shared.setActivationPolicy(.regular)
        NSApplication.shared.activate(ignoringOtherApps: true)
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(model)
        }
        .windowStyle(.titleBar)
        .commands {
            CommandGroup(replacing: .newItem) {}
        }
    }
}
