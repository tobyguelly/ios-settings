import SwiftUI

struct ProfileView: View {
	var body: some View {
		NavigationLink(
			destination: Text("Hello World")
		) {
			HStack {
				Image(systemName: "person.crop.circle.fill")
					.resizable()
					.frame(width: 50, height: 50)
					.foregroundColor(.gray)
				VStack(alignment: .leading) {
					Text("Tobias Gülly")
						.font(Font.title)
					Text("Apple ID, iCloud, Media & Purchases")
						.font(Font.subheadline)
						.lineLimit(1)
				}
				.padding(.top, 10)
				.padding(.bottom, 10)
			}
		}
	}
}
