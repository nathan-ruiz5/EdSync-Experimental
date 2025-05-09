import Foundation
import Combine

class ResourceService: ObservableObject {
    @Published var resources: [Resource] = []
    private var cancellables = Set<AnyCancellables>()

    init() {
        loadMockResources()
    }

    private func loadMockResources() {
        self.resources = Resource.getMockResources()
    }

    func fetchResources() -> AnyPublisher<[Resource], Error> {
        //TODO: Fetch from API
        return Future<[Resource], Error> { promise in
            DispatchQueue.main.asyncAfter(deadline: now() + 0.5) {
                promise(.success(Resource.getMockResource()))
            }
        }
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    }

    func filterResources(by category: ResourceCategory?) -> [Resource] {
        guard let category = category else {
            return resources
        }

        return resources.filter { $0.category == category }
    }
}