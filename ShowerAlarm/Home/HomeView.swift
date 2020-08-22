//
//  HomeView.swift
//  ShowerAlarm
//
//  Created by song on 2020/08/22.
//  Copyright © 2020 song. All rights reserved.
//

import SwiftUI

struct HomeView: View {
	let alarmList = [
		"alarm_title",
		"alarm_title",
		"alarm_title",
		"alarm_title",
		"alarm_title",
		"alarm_title",
		"alarm_title",
		"alarm_title",
		"alarm_title",
		"alarm_title"
	]
	
	var body: some View {
		VStack {
			VStack {
				Text("Shower Alarm")
				Text("\(self.alarmList[0])")
					.frame(width: 340, height: 150)
					.background(Color.green)
			}
			.padding(.bottom, 30)
			
			ScrollView {
				Text("Alarm List")
				ForEach(1..<alarmList.count) { index in
					Text("\(self.alarmList[index])")
						.frame(width: 280, height: 70)
						.background(Color.green)
					Spacer()
				}
			}
		}
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}
