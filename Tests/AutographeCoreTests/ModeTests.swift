import Testing

@testable import AutographeCore

@Suite("Mode")
@MainActor
struct ModeTests {
    @Test("starts in normal mode")
    func startsNormal() {
        let model = EditorModel()
        #expect(model.mode == .normal)
        #expect(model.mode.label == "NORMAL")
    }

    @Test("label is correct for insert")
    func insertLabel() {
        let model = EditorModel()
        model.mode = .insert
        #expect(model.mode.label == "INSERT")
    }
}
