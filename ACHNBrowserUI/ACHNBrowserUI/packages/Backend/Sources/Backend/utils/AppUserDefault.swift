//
//  AppUserDefault.swift
//  ACHNBrowserUI
//
//  Created by Thomas Ricouard on 19/04/2020.
//  Copyright © 2020 Thomas Ricouard. All rights reserved.
//

import Foundation
import Combine

public class AppUserDefaults: ObservableObject {
    public static let shared = AppUserDefaults()
    
    @UserDefault("island_name", defaultValue: "")
    public var islandName: String {
        willSet {
            objectWillChange.send()
        }
    }
    
    @UserDefault("friend_code", defaultValue: "")
    public var friendCode: String {
        willSet {
            objectWillChange.send()
        }
    }
    
    @UserDefault("dodo_code", defaultValue: "")
    public var dodoCode: String {
        willSet {
            objectWillChange.send()
        }
    }
    
    @UserDefaultEnum("hemisphere", defaultValue: Hemisphere.north)
    public var hemisphere: Hemisphere {
        willSet {
            objectWillChange.send()
        }
    }
    
    @UserDefaultEnum("fruit", defaultValue: Fruit.apple)
    public var fruit: Fruit {
        willSet {
            objectWillChange.send()
        }
    }
    
    @UserDefaultEnum("nook_shop", defaultValue: Infrastructure.NookShop.tent)
    public var nookShop: Infrastructure.NookShop {
        willSet {
            objectWillChange.send()
        }
    }
    
    @UserDefaultEnum("able_sisters", defaultValue: Infrastructure.AbleSisters.visiting)
    public var ableSisters: Infrastructure.AbleSisters {
        willSet {
            objectWillChange.send()
        }
    }
    
    @UserDefaultEnum("resident_service", defaultValue: Infrastructure.ResidentService.tent)
    public var residentService: Infrastructure.ResidentService {
        willSet {
            objectWillChange.send()
        }
    }
    
    @UserDefault("is_subscribed", defaultValue: false)
    public var isSubscribed: Bool {
        willSet {
            objectWillChange.send()
        }
    }
    
    @UserDefaultCodable("today_sections", defaultValue: TodaySection.defaultSectionList)
    public var todaySectionList: [TodaySection] {
        willSet {
            objectWillChange.send()
        }
    }

    @UserDefault("spotlight_index_version", defaultValue: "")
    public var spotlightIndexVersion: String
    
    @UserDefault("number_of_launch", defaultValue: 0)
    public var numberOfLaunch: Int

    @UserDefault("dodo_notifications", defaultValue: false)
    public var dodoNotifications: Bool

    @UserDefault("shop_notifications_enabled", defaultValue: false)
    public var shopNotificationsEnabled: Bool {
        willSet {
            objectWillChange.send()
        }
    }
    
    @UserDefault("special_event_notifications_enabled", defaultValue: false)
    public var specialEventNotificationsEnabled: Bool {
        willSet {
            objectWillChange.send()
        }
    }
    
    @UserDefault("is_turnip_price_changes_on", defaultValue: false)
    public var isTurnipPriceChangesOn: Bool {
        willSet {
            objectWillChange.send()
        }
    }
    
    @UserDefault("is_turnip_sell_buy_on", defaultValue: false)
    public var isTurnipSellBuyOn: Bool {
        willSet {
            objectWillChange.send()
        }
    }
    
    @UserDefault("is_game_time_in_sync", defaultValue: false)
    public var isGameTimeInSync: Bool {
        willSet {
            objectWillChange.send()
        }
    }
}

