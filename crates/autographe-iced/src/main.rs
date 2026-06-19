use autographe_core::Editor;
use iced::widget::{column, container, text};
use iced::{Element, Length};

fn main() -> iced::Result {
    iced::application(App::default, update, view)
        .title("Autographe")
        .run()
}

struct App {
    editor: Editor,
}

impl Default for App {
    fn default() -> Self {
        App {
            editor: Editor::default(),
        }
    }
}

#[derive(Debug, Clone)]
enum Message {}

fn update(_app: &mut App, _message: Message) {}

fn view(app: &App) -> Element<'_, Message> {
    let title = text("Autographe").size(28);
    let modeline = text(format!("mode: {}", app.editor.mode.label())).size(14);

    container(column![title, modeline].spacing(12))
        .padding(24)
        .width(Length::Fill)
        .height(Length::Fill)
        .into()
}
