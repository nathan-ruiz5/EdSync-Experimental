import Foundation
import Combine

class AuthService: ObservableObject {
    @Published var currentUser: User?
    @Published var isAuthenticated = false
    private var cancellables = Set<AnyCancellable>()

    func signIn(email: String, password: String) -> AnyPublisher<User, Error> {
        //Sim successful login
        //TODO: Connect to backend API
        return Future<User, Error> { promise in
            //Sim network delay
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            //TODO: Validate credentials
                let user = User(
                    id: UUID(),
                    name: "Juan Nadie",
                    email: "example@hotmail.com",
                    memberSince: Date()
                )
                promise(.success(User))
            }
        }
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()

        self.currentUser = user
        self.isAuthenticated = true
    }

    func signOut() {
        currentUser = nil
        isAuthenticated = false
    }
}