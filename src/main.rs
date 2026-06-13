// pub use cosmic_text;

use iced::{
    widget::{container, text_editor},
    Element,
    Length::Fill,
    Theme,
};

fn main() -> iced::Result {
    iced::application(Editor::new, Editor::update, Editor::view)
        .theme(Editor::theme)
        .run()
}

struct Editor {
    content: text_editor::Content,
}

#[derive(Debug, Clone)]
enum Message {
    Edit(text_editor::Action),
}

impl Editor {
    fn new() -> Self {
        Self {
            content: text_editor::Content::new(),
        }
    }

    fn update(&mut self, message: Message) {
        match message {
            Message::Edit(action) => {
                self.content.perform(action);
            }
        }
    }

    fn view(&self) -> Element<'_, Message> {
        let input = text_editor(&self.content)
            .on_action(Message::Edit)
            .height(Fill);

        container(input).padding(10).into()
    }

    fn theme(&self) -> Theme {
        Theme::Dark
    }
}
