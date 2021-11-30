import SwiftUI

struct NotificationSettingView: View {
	var body: some View {
		OpenableOptionView(
			name: "Notifications",
			image: "bell.badge.fill",
			hint: "",
			color: .red
		)
		OpenableOptionView(
			name: "Sounds & Haptics",
			image: "speaker.wave.3.fill",
			hint: "",
			color: .pink
		)
		OpenableOptionView(
			name: "Focus",
			image: "moon.fill",
			hint: "",
			color: .indigo
		)
		OpenableOptionView(
			name: "Screen Time",
			image: "hourglass",
			hint: "",
			color: .indigo
		)
	}
}

struct GeneralSettingView: View {
	var body: some View {
		SwitchableOptionView(
			name: "Airplane Mode",
			image: "airplane",
			color: .orange
		)
		OpenableOptionView(
			name: "Wi-Fi",
			image: "wifi",
			hint: "Off",
			color: .blue
		)
		OpenableOptionView(
			name: "Bluetooth",
			image: "bolt.horizontal.fill", // No bluetooth symbol?
			hint: "On",
			color: .blue
		)
		OpenableOptionView(
			name: "Mobile Data",
			image: "antenna.radiowaves.left.and.right",
			hint: "",
			color: .green
		)
		OpenableOptionView(
			name: "Personal Hotspot",
			image: "personalhotspot",
			hint: "",
			color: .green
		)
	}
}
