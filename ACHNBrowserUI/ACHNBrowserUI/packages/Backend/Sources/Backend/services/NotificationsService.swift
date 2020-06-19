//
//  NotificationsService .swift
//  
//
//  Created by Rohan Ramakrishnan on 6/14/20.
//

import Foundation

public class NotificationsService {
    public static var shared = NotificationsService()
    
    public var shopNotificationsEnabled: Bool = false {
        didSet {
            NotificationManager.shared.removeShopNotifications()
            if shopNotificationsEnabled {
                registerShopNotifications()
            }
        }
    }
    public var eventNotificationsEnabled: Bool = false {
        didSet {
            NotificationManager.shared.removeShopNotifications()
            if eventNotificationsEnabled {
                // TODO function for registering events
            }
        }
    }
    
    private init() {
        registerShopNotifications()
    }
    
    private func registerShopNotifications() {
        NotificationManager.shared.registerSettingsNotifications(subtitle: "Nook’s Cranny store is open", hour: 8, minute: 0, isRepeated: true)
        NotificationManager.shared.registerSettingsNotifications(subtitle: "Nook’s Cranny store is closing in 1h", hour: 21, minute: 0, isRepeated: true)
        NotificationManager.shared.registerSettingsNotifications(subtitle: "Able Sisters Shop is open", hour: 9, minute: 0, isRepeated: true)
        NotificationManager.shared.registerSettingsNotifications(subtitle: "Able Sisters Shop is closing in 1h", hour: 20, minute: 0, isRepeated: true)
    }
}

