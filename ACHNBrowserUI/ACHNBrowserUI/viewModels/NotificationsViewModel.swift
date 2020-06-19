//
//  SettingsViewModel.swift
//  ACHNBrowserUI
//
//  Created by Rohan Ramakrishnan on 6/14/20.
//  Copyright © 2020 Thomas Ricouard. All rights reserved.
//

import Foundation
import Combine
import Backend

class NotificationsViewModel: ObservableObject {
    
    private static let appUserDefaults = AppUserDefaults.shared
    
    @Published var shopNotificationsEnabled = appUserDefaults.shopNotificationsEnabled {
        didSet {
            NotificationsService.shared.shopNotificationsEnabled = shopNotificationsEnabled
        }
    }
    @Published var eventNotificationsEnabled = appUserDefaults.specialEventNotificationsEnabled {
        didSet {
            NotificationsService.shared.eventNotificationsEnabled = eventNotificationsEnabled
        }
    }
    
    @Published var useDeviceTime = appUserDefaults.isGameTimeInSync
}
