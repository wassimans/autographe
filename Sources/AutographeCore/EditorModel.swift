import Foundation
import Observation

/// (maybe) The complete state of an editing session
@Observable
@MainActor
public final class EditorModel {
    public var mode: Mode = .normal
    public var rawMarkdown: String = ""
    public var statusMessage: String = "ready"

    public init() {}
}
