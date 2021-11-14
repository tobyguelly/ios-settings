import SwiftUI

struct SettingsView: View {
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
	}
}
