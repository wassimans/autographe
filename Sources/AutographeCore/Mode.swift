/// The editor's modal state.
public enum Mode: Sendable, Equatable {
    case normal
    case insert
    /// Visual selection mode. Anchor is the starting offset, the other
    /// end is determined by where the cursor lands.
    case visual(anchor: Int)

    public var label: String {
        switch self {
        case .insert: "INSERT"
        case .normal: "NORMAL"
        case .visual: "VISUAL"
        }
    }
}
