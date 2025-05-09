import SwiftUI

struct AppHeader: View {
    var body: some View {
        Image("EdSyncLogo")
            .resizable()
            .scaledToFit()
            .padding(.top, 10)
            .frame(width: 75)
            .accessibility(label: Text("EdSync Logo"))
    }
}