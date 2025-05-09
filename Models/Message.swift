import Foundation

struct Message: Identifiable, Equatable {
    let id: String
    let sender: String
    let text: String
    let received: Bool
    let timestamp: Date

    // For testing
    static func getMockMessages() -> [Message] {
        [
            Message(
                id:"1",
                sender: "EdSync Team",
                text: "Hello!",
                received: true,
                timestamp: Date().timeIntervalSince(-3600)
                )
            ]
    }
}