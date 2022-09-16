import SwiftUI

struct ProfileSectionView<Content: View>: View {
	
	private var name, description: String
	private var image: Image?
	
	private var content: Content?
	
	init(_ name: String, _ description: String, image: Image? = nil, @ViewBuilder content: () -> Content) {
		self.name = name
		self.description = description
		self.image = image
		self.content = content()
	}
	
	var body: some View {
		Section {
			NavigationLink(
				destination: self.content
			) {
				HStack {
					if self.image != nil {
						self.image
					} else {
						Image(systemName: "person.crop.circle.fill")
							.resizable()
							.frame(width: 50, height: 50)
							.foregroundColor(.gray)
					}
					VStack(alignment: .leading) {
						Text(self.name)
							.font(Font.title2)
						Text(self.description)
							.font(Font.subheadline)
							.lineLimit(1)
					}
				}
			}
		}
	}
}
