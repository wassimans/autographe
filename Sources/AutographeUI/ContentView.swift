import AutographeCore
import SwiftUI

struct ContentView: View {
    @Environment(EditorModel.self) private var model

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Autographe")
                .font(.system(size: 28, weight: .light, design: .serif))
                .padding(.horizontal, 48)
                .padding(.top, 48)

            Spacer()

            // The modeline
            HStack {
                Text(model.mode.label)
                    .font(.system(size: 11, weight: .medium, design: .monospaced))
                    .foregroundStyle(.secondary)
                Spacer()
                Text(model.statusMessage)
                    .font(.system(size: 11, design: .monospaced))
                    .foregroundStyle(.tertiary)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 6)
            .background(.bar)

        }
        .frame(minWidth: 560, minHeight: 400)
        .background(Color(NSColor.textBackgroundColor))
    }
}
