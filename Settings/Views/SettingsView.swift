import SwiftUI

struct SettingsView: View {
	@State private var searchString = ""
	var body: some View {
		NavigationView {
			List {
				Section() {
					ProfileView()
				}
				Section() {
					GeneralSettingView()
				}
				Section() {
					NotificationSettingView()
				}
			}
			.navigationTitle("Settings")
		}
		.searchable(text: $searchString)
	}
}
