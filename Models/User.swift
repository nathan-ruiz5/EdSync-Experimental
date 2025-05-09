import Foundation

struct User: Identifiable, Equatable {
    let id: UUID
    let name: String
    let email: String
    let memberSince: Date
    var profileImageName: String?

    init(id: UUID = UUID(), name: String, email: String, memberSince: Date, profileImage: String? = "person.circle") {
        self.id = id
        self.name = name
        self.email = email
        self.memberSince = memberSince
        self.profileImageName = profileImageName
    }
}