//! autographe-core: the GUI-agnostic core of Autographe app.
//!
//! This crate should know nothing about gui related constructs.
//! Everything here needs to be unit-testable without a display.

/// The editor's editing modes
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum Mode {
    Normal,
    Insert,
}

impl Mode {
    /// Human readable labels for the modeline
    pub fn label(self) -> &'static str {
        match self {
            Mode::Normal => "NORMAL",
            Mode::Insert => "INSERT",
        }
    }
}

/// State is the Editor.
#[derive(Debug)]
pub struct Editor {
    pub mode: Mode,
    pub status: String,
}

impl Editor {
    pub fn new() -> Self {
        Editor {
            mode: Mode::Normal,
            status: String::from("ready"),
        }
    }
}

impl Default for Editor {
    fn default() -> Self {
        Self::new()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn starts_in_normal_mode() {
        let editor = Editor::new();
        assert_eq!(editor.mode, Mode::Normal);
        assert_eq!(editor.mode.label(), "NORMAL");
    }
}
