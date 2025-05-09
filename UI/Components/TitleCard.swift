import SwiftUI

struct TitleCard : View {
    let title: String
    let subtitle: String

    init(title: String = "Autism Support Chatroom", subtitle: String = "8 members online") {
        self.title = title
        self.subtitle = subtitle
    }

    var body : some View {
        VStack {
            Text(title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)

            Text(subtitle)
                .font(.caption)
                .foregroundStyle(.style)
        }
            .padding(.vertical, 8)
    }
}