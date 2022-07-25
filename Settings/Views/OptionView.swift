import SwiftUI

typealias Action = () -> Void

struct OptionView<Content: View>: View {
	
	private var text, hint: String
	private var image: String?
	private var color: Color?

	private var content: Content?
	private var onClick: Action?

	private var useToggle: Bool
	@Binding private var toggleState: Bool

	// This constructor creates an OptionView that opens another view when clicked
	init(_ text: String, hint: String = "", image: String? = nil, color: Color? = nil, @ViewBuilder content: () -> Content) {
		self.text = text
		self.hint = hint
		self.image = image
		self.color = color
		self.content = content()
		self.onClick = nil
		self.useToggle = false
		var dummy = false
		let binding = Binding(
			get: { dummy },
			set: { dummy = $0 }
		)
		self._toggleState = binding
	}

	// This constructor creates an OptionView that runs a callback function when clicked
	init(_ text: String, hint: String = "", image: String? = nil, color: Color? = nil, action: @escaping Action) {
		self.text = text
		self.hint = hint
		self.image = image
		self.color = color
		content = nil
		onClick = action
		self.useToggle = false
		var dummy = false
		let binding = Binding(
			get: { dummy },
			set: { dummy = $0 }
		)
		_toggleState = binding
	}
	
	// This constructor creates an OptionView that runs a callback function when toggled
	// Instead of running a callback function, it changes the value of a state directly via a binding
	init(_ text: String, hint: String = "", image: String? = nil, color: Color? = nil, binding: Binding<Bool>) {
		self.text = text
		self.hint = hint
		self.image = image
		self.color = color
		self.useToggle = true
		content = nil
		onClick = nil
		_toggleState = binding
	}

	var item: some View {
		return HStack {
			if image != nil && color != nil {
				ZStack {
					Rectangle()
						.fill(color ?? .primary)
						.frame(width: 30, height: 30)
						.cornerRadius(7)
					Image(systemName: image ?? "")
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: 20, height: 20)
						.foregroundColor(.white)
				}
			}
			Text(text)
				.font(.callout)
			Spacer()
			if self.useToggle {
				Toggle(isOn: $toggleState) {
					Spacer()
				}
			} else {
				Text(hint)
					.font(.callout)
					.foregroundColor(.gray)
			}
		}
	}

	var body: some View {
		if content != nil {
			NavigationLink(
				destination: content
			) {
				item
			}
		} else if onClick != nil {
			Button(action: {
				onClick?()
			}) {
				item
			}
			.buttonStyle(.plain)
		} else {
			item
		}
	}
}
