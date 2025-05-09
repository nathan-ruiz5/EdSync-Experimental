import Foundation
import SwiftUI

@main
struct EdSyncApp: App {
    @StateObject private var appEnvironment = AppEnvironment()

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(appEnvironment)
        }
    }
}

class AppEnvironment : ObservableObject {
    @Published var currentUser: User?
    @Published var isAuthenticated = false

    //services
    let authService = AuthService()
    let resourceService = ResourceService()

    init() {
        //Initialize env
        loadInitialState()
    }

    private func loadInitialState() {
        self.currentUser = User(
            id: UUID(),
            name: "Juan Nadie",
            email: "example@hotmail.com",
            memberSince: Date()
        )
        self.isAuthenticated = true
    }

    private func signOut() {
        self.currentUser = nil
        self.isAuthenticated = false
    }
}
