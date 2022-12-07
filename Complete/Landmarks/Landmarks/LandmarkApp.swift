//
//  LandmarkApp.swift
//  Landmarks
//
//  Created by jonesr on 12/6/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

@main
struct LandmarkApp: App {
        
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            //LandmarkList().environmentObject(appDelegate.userData)
            LandingView(user: appDelegate.userData)
        }
    }
}
