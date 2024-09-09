//
//  SizeConstants.swift
//  Tinder Clone
//
//  Created by Shashi Gupta on 09/09/24.
//

import Foundation
import SwiftUI

struct SizeConstants{
    
    static var screenCutOff : CGFloat{
        (UIScreen.main.bounds.width/2) * 0.8
    }
    
    static var cardWidth : CGFloat{
        UIScreen.main.bounds.width-20
    }
    
    static var cardHeight : CGFloat{
        UIScreen.main.bounds.height/1.45
    }
}
