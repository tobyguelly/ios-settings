import SwiftUI

struct DemoSettingsView: View {
	
	@State private var demoAirplane: Bool = true
	@State private var demoHours: Bool = true
	@State private var demoAuto: Bool = true
	
	@State private var searchString = ""
	
	var body: some View {
		NavigationView {
			List {
				ProfileSectionView(
					"Example User",
					"Apple ID, iCloud, Media & Purchases"
				) {
					Spacer()
				}
				Section {
					OptionView<Spacer>(
						"Airplane Mode",
						image: "airplane",
						color: .orange,
						binding: self.$demoAirplane
					)
					OptionView(
						"Wi-Fi",
						hint: "Off",
						image: "wifi",
						color: .blue
					) {
						Spacer()
					}
					OptionView(
						"Bluetooth",
						hint: "On",
						image: "bolt.horizontal.fill",
						color: .blue
					) {
						Spacer()
					}
					OptionView(
						"Mobile Data",
						image: "antenna.radiowaves.left.and.right",
						color: .green
					) {
						Spacer()
					}
					OptionView(
						"Personal Hotspot",
						image: "personalhotspot",
						color: .green
					) {
						Spacer()
					}
				}
				Section {
					OptionView(
						"Notifications",
						image: "bell.badge.fill",
						color: .red
					) {
						Spacer()
					}
					OptionView(
						"Sounds & Haptics",
						image: "speaker.wave.3.fill",
						color: .pink
					) {
						Spacer()
					}
					OptionView(
						"Focus",
						image: "moon.fill",
						color: .indigo
					) {
						Spacer()
					}
					OptionView(
						"Screen Time",
						image: "hourglass",
						color: .indigo
					) {
						Spacer()
					}
				}
				Section {
					OptionView(
						"General",
						image: "gear",
						color: .gray
					) {
						List {
							Section {
								OptionView(
									"Info"
								) {
									Spacer()
								}
								OptionView(
									"Software Update"
								) {
									Spacer()
								}
							}
							Section {
								OptionView(
									"AirDrop"
								) {
									Spacer()
								}
								OptionView(
									"AirPlay & Handoff"
								) {
									Spacer()
								}
								OptionView(
									"Picture in Picture"
								) {
									Spacer()
								}
								OptionView(
									"CarPlay"
								) {
									Spacer()
								}
							}
							Section {
								OptionView(
									"iPhone Storage"
								) {
									Spacer()
								}
								OptionView(
									"Background App Refresh"
								) {
									Spacer()
								}
							}
							Section {
								OptionView(
									"Date & Time"
								) {
									List {
										Section {
											OptionView<Spacer>(
												"24-Hour Time",
												binding: self.$demoHours
											)
										}
										Section {
											OptionView<Spacer>(
												"Set Automatically",
												binding: self.$demoAuto
											)
											OptionView(
												"Timezone",
												hint: "Vienna"
											) {
												Spacer()
											}
										}
									}.navigationBarTitle("Date & Time", displayMode: .inline)
								}
								OptionView(
									"Keyboard"
								) {
									Spacer()
								}
								OptionView(
									"Fonts"
								) {
									Spacer()
								}
								OptionView(
									"Language & Region"
								) {
									Spacer()
								}
								OptionView(
									"Dictionary"
								) {
									Spacer()
								}
							}
							Section {
								OptionView(
									"VPN",
									hint: "Not Connected"
								) {
									Spacer()
								}
							}
							Section {
								OptionView(
									"Legal & Regulatory"
								) {
									Spacer()
								}
							}
							Section {
								OptionView(
									"Reset"
								) {
									Spacer()
								}
								OptionView<Spacer>(
									"Shutdown",
									action: {
										print("Shutdown pressed!")
									}
								)
							}
						}
						.navigationBarTitle("General", displayMode: .inline)
					}
					OptionView(
						"Control Centre",
						image: "switch.2",
						color: .gray
					) {
						Spacer()
					}
					OptionView(
						"Display & Brightness",
						image: "textformat.size",
						color: .blue
					) {
						Spacer()
					}
					OptionView(
						"Accessibility",
						image: "figure.walk",
						color: .blue
					) {
						Spacer()
					}
					OptionView(
						"Wallpaper",
						image: "photo.fill",
						color: .cyan
					) {
						Spacer()
					}
					OptionView(
						"Face ID & Code",
						image: "faceid",
						color: .green
					) {
						Spacer()
					}
					OptionView(
						"Emergency SOS",
						image: "phone.fill",
						color: .red
					) {
						Spacer()
					}
					OptionView(
						"Battery",
						image: "battery.100",
						color: .green
					) {
						Spacer()
					}
					OptionView(
						"Privacy",
						image: "hand.raised.fill",
						color: .blue
					) {
						Spacer()
					}
				}
			}
			.navigationTitle("Settings")
		}
		.searchable(text: $searchString)
	}
}
