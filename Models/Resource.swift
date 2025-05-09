import Foundation

struct Resource: Identifiable {
    let id: UUID
    let title: String
    let description: String
    let url: String
    let category: ResourceCategory
    let location: String?
    let contact: String?

    init(id: UUID = UUID(), title: String, description: String = "", url: String, category: ResourceCategory, location: String? = nil, contact: String? = nil) {
        self.id = id
        self.title = title
        self.description = description
        self.url = url
        self.category = category
        self.location = location
        self.contact = contact
    }

    // For testing
    // TODO: Remove on launch
    static func getMockResources() -> [Resource] {
        [
            Resource(
                title: "Autism Society Ventura County",
                description: "",
                url: "https://autismventura.org/",
                category: .therapy,
                location: "1317 Del Norte Dr. Suite 115, Camarillo, CA 93010",
                contact: "(805) 496-1632"
            ),
            Resource(
                title: "Child Development Resources of Ventura County Parent Guides",
                description: "Guides and resources for parents of children with developmental disabilities",
                url: "https://cdrv.org/parent-resources/",
                category: .education
            ),
            Resource(
                title: "Triton Academy",
                description: "Highly-specialized, research-based school environment designed to address the needs of students with Autism Spectrum Disorder in 3rd-12th grades. Note: Referrals must be made through VCOE and the IEP.",
                url: "https://www.vcoe.org/triton",
                category: .education,
                location: "5250 Adolfo Rd, Camarillo, CA 93012"
            )
            ]
    }
}
enum ResourceCategory: String, CaseIterable, Identifiable {
    case therapy = "Therapy"
    case education = "Education"
    case behavioral = "Behavioral Services"
    case support = "Support Groups"
    case recreation = "Recreation"
    case financial = "Financial"
    case medical = "Medical Services"

    var id: String { self.rawvalue }
}