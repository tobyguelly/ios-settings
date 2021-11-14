import SwiftUI

struct OpenableOptionView: View {
	var name, image, hint: String
	var color: Color
	var body: some View {
		NavigationLink(
			destination: Text("Hello World")
		) {
			HStack {
				ZStack {
					Rectangle()
						.fill(self.color)
						.frame(width: 30, height: 30)
						.cornerRadius(5)
					Image(systemName: self.image)
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: 20, height: 20)
						.foregroundColor(.white)
				}
				Text(self.name)
					.font(.callout)
				Spacer()
				Text(self.hint)
					.font(.callout)
					.foregroundColor(.gray)
			}
		}
	}
}

struct SwitchableOptionView: View {
	var name, image: String
	var color: Color
	@State private var isToggled: Bool = false
	var body: some View {
		HStack {
			ZStack {
				Rectangle()
					.fill(self.color)
					.frame(width: 30, height: 30)
					.cornerRadius(5)
				Image(systemName: self.image)
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 20, height: 20)
					.foregroundColor(.white)
			}
			Text(self.name)
				.font(.callout)
			Spacer()
			Toggle(isOn: $isToggled) {
				Spacer()
			}
		}
	}
}
