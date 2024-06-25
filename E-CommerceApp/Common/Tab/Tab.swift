//
//  Tab.swift
//  E-CommerceApp
//
//  Created by Şehriban Yıldırım on 25.06.2024.
//

import Foundation

enum Tab: String, CaseIterable{
    case home = "house"
    case search = "magnifyingglass.circle"
    case notification = "bell"
    case cart  = "bag"
    case profile = "person"
    
    var tabName: String{
        switch self{
        case .home:
            return "Home"
        case .search:
            return "Search"
        case .notification:
            return "Notification"
        case .cart:
            return "Cart"
        case .profile:
            return "Profile"
        }
    }
}
