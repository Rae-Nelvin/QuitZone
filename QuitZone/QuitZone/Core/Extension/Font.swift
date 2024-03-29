//
//  Font.swift
//  QuitZone
//
//  Created by Jonathan Evan Christian on 30/04/23.
//

import SwiftUI


//CARA PAKENYA:
//Text("ini text")
//    .font(.secondary(.body)) -> bisa gini
//    .font(.secondary(.custom(12))) -> bisa gini juga kalo mau custom size

extension Font {
    enum BloxFont {
        case regular
        
        var value: String {
            switch self {
            case .regular:
                return "Blox-BRK"
            }
        }
    }
    
    enum TicketingFont {
        case regular
        
        var value: String {
            switch self {
            case .regular:
                return "Ticketing"
            }
        }
    }
    
    enum SizeFont {
        case maintitle
        case title
        case subtitle
        case body
        case caption
        case custom(Int)
        case subPage
        
        
        var value: CGFloat {
            switch self {
            case .maintitle:
                return 72
            case .title:
                return 34
            case .subtitle:
                return 32
            case .body:
                return 20
            case .caption:
                return 16
            case .subPage:
                return 50
            case .custom (let size):
                return CGFloat(size)
            }
        }
    }
    
    static func primary(_ size: SizeFont) -> Font {
        return .custom("Blox-BRK", size: size.value)
    }
    
    static func secondary(_ size: SizeFont) -> Font {
        return .custom("Ticketing", size: size.value)
    }
    
    
    
    
}
