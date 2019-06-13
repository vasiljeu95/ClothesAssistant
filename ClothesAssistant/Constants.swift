//
//  Constants.swift
//  ClothesAssistant
//
//  Created by Stepan Vasiljeu on 12/31/18.
//  Copyright © 2018 Stepan Vasiljeu. All rights reserved.
//

import Foundation

// MARK: - Constants
enum ConstantsLevels: String {
    case level1 = "Underwear shirt and pant"
    case level2 = "Mid-weight fleece pullover and pant"
    case level3 = "Heavyweight fleece jacket"
    case level4 = "Thin windproof wind-shirt"
    case level5 = "Soft shell jacket and pants"
    case level6 = "Gore-Tex hard shell jacket and pant"
    case level7 = "High-loft warm jacket and pants made of breathable synthetic insulation"
    case level7A = "High-loft warm Vest made of breathable synthetic insulation"
    case level7type2 = "High-loft warm long jacket made of breathable synthetic insulation"
    case cammies = "Outdoor clothes"
    
    
    // switchLevelsCase
    case titleAll = "That's all Levels"
    case messageAll = "and get in the MSS"
    case titleUniform = "Your protective outdoor clothes:"
    case messageBoxers = "Boxers"
    
    //0-0
    case present00case1 = "Allert is 0-0 <= (-46)"
    case present00case2 = "Allert is 0-0 > (-46) && <= (-18)"
    case present00case3 = "Allert is 0-0 > (-18) && <= (-2)"
    case present00case4 = "Allert is 0-0 > (-2) && <= 6"
    case present00case5 = "Allert is 0-0 > 6 && <= 20"
    case present00case6 = "Allert is 0-0 > 20 && <= 50"
    case present00case7 = "Allert is 0-0 > 50"
    
    case message00case2 = "Mid-weight fleece pullover and pant + Soft shell jacket and pants + High-loft warm jacket and pants made of breathable synthetic insulation"
    case message00case3 = "Underwear shirt and pant + Mid-weight fleece pullover and pant + Soft shell jacket and pants"
    case message00case4 = "Underwear shirt and pant + Outdoor clothes + Thin windproof “wind shirt"
    case message00case5 = "Underwear shirt and pant + Outdoor clothes"
    case message00case6 = "Outdoor clothes."
    //0-1
    case present01case1 = "Allert is 0-1 <= (-46)"
    case present01case2 = "Allert is 0-1 > (-46) && <= (-18)"
    case present01case3 = "Allert is 0-1 > (-18) && <= (-2)"
    case present01case4 = "Allert is 0-1 > (-2) && <= 6"
    case present01case5 = "Allert is 0-1 > 6 && <= 20"
    case present01case6 = "Allert is 0-1 > 20 && <= 50"
    case present01case7 = "Allert is 0-1 > 50"
    
    case message01case2 = "Mid-weight fleece pullover and pant + Soft shell jacket and pants + High-loft warm jacket and pants made of breathable synthetic insulation + High-loft warm Vest made of breathable synthetic insulation"
    case message01case3 = "Underwear shirt and pant + Heavyweight fleece jacket + Soft shell jacket and pants"
    case message01case4 = "Underwear shirt and pant + Outdoor clothes + Soft shell jacket and pants"
    case message01case6 = "Underwear shirt and pant + Thin windproof “wind shirt"
    //1-0
    case present10case1 = "Allert is 1-0 <= (-46)"
    case present10case2 = "Allert is 1-0 > (-46) && <= (-18)"
    case present10case3 = "Allert is 1-0 > (-18) && <= (-2)"
    case present10case4 = "Allert is 1-0 > (-2) && <= 6"
    case present10case5 = "Allert is 1-0 > 6 && <= 20"
    case present10case6 = "Allert is 1-0 > 20 && <= 50"
    case present10case7 = "Allert is 1-0 > 50"
    
    case message10case2 = "Mid-weight fleece pullover and pant  + Heavyweight fleece jacket + Soft shell jacket and pants + High-loft warm jacket and pants made of breathable synthetic insulation + High-loft warm Vest made of breathable synthetic insulation"
    case message10case3 = "Underwear shirt and pant + Mid-weight fleece pullover and pant + Soft shell jacket and pants + High-loft warm jacket and pants made of breathable synthetic insulation"
    case message10case4 = "Underwear shirt and pant + Mid-weight fleece pullover and pant + Outdoor clothes or Soft shell jacket and pants"
    //1-1
    case present11case1 = "Allert is 1-1 <= (-46)"
    case present11case2 = "Allert is 1-1 > (-46) && <= (-18)"
    case present11case3 = "Allert is 1-1 > (-18) && <= (-2)"
    case present11case4 = "Allert is 1-1 > (-2) && <= 6"
    case present11case5 = "Allert is 1-1 > 6 && <= 20"
    case present11case6 = "Allert is 1-1 > 20 && <= 50"
    case present11case7 = "Allert is 1-1 > 50"
    
    case message11case2 = "Mid-weight fleece pullover and pant + Heavyweight fleece jacket + Soft shell jacket and pants + High-loft warm jacket and pants made of breathable synthetic insulation + High-loft warm Vest made of breathable synthetic insulation + High-loft warm long jacket made of breathable synthetic insulation"
    case message11case3 = "Mid-weight fleece pullover and pant + Heavyweight fleece jacket + Soft shell jacket and pants + High-loft warm jacket and pants made of breathable synthetic insulation"
    case message11case4 = "Underwear shirt and pant + Heavyweight fleece jacket + Soft shell jacket and pants + Gore-Tex hard shell jacket and pant"
    case message11case5 = "Underwear shirt and pant + Outdoor clothes + Thin windproof “wind shirt + Gore-Tex hard shell jacket and pant"
    case message11case6 = "Underwear shirt and pant or Outdoor clothes + Gore-Tex hard shell jacket and pant"
}

// first levels
/* // MARK: - Constants
 enum ConstantsLevels: String {
 case level1 = "Underwear shirt and pant"
 case level2 = "Mid-weight pullover and long pant in fleece"
 case level3 = "Heavyweight fleece jacket"
 case level4 = "Thin windproof “wind shirt"
 case level5 = "Soft shell jacket and pants"
 case level6 = "Gore-Tex hard shell jacket and pant"
 case level7 = "High-loft warm jacket and pants made of breathable synthetic insulation"
 case level7A = "High-loft warm Vest made of breathable synthetic insulation"
 case level7type2 = "High-loft warm long jacket made of breathable synthetic insulation"
 case cammies = "Outdoor clothes"
 // switchLevelsCase
 case titleAll = "That's all Levels"
 case messageAll = "and get in the MSS"
 case titleUniform = "Your protection uniform:"
 case messageBoxers = "Boxers"
 
 //0-0
 case present00case1 = "Allert is 0-0 <= (-46)"
 case present00case2 = "Allert is 0-0 > (-46) && <= (-18)"
 case present00case3 = "Allert is 0-0 > (-18) && <= (-2)"
 case present00case4 = "Allert is 0-0 > (-2) && <= 6"
 case present00case5 = "Allert is 0-0 > 6 && <= 20"
 case present00case6 = "Allert is 0-0 > 20 && <= 50"
 case present00case7 = "Allert is 0-0 > 50"
 
 case message00case2 = "Level 2 + Level 5 + Level 7"
 case message00case3 = "Level 1 + Level 2 + Level 5"
 case message00case4 = "Level 1 + Cammies + Level 4"
 case message00case5 = "Level 1 + Cammies"
 case message00case6 = "Cammies"
 //0-1
 case present01case1 = "Allert is 0-1 <= (-46)"
 case present01case2 = "Allert is 0-1 > (-46) && <= (-18)"
 case present01case3 = "Allert is 0-1 > (-18) && <= (-2)"
 case present01case4 = "Allert is 0-1 > (-2) && <= 6"
 case present01case5 = "Allert is 0-1 > 6 && <= 20"
 case present01case6 = "Allert is 0-1 > 20 && <= 50"
 case present01case7 = "Allert is 0-1 > 50"
 
 case message01case2 = "Level 2 + Level 5 + Level 7 + Level 7A"
 case message01case3 = "Level 1 + Level 3 + Level 5"
 case message01case4 = "Level 1 + Cammies + Level 5"
 case message01case6 = "Level 1 + Level 4"
 //1-0
 case present10case1 = "Allert is 1-0 <= (-46)"
 case present10case2 = "Allert is 1-0 > (-46) && <= (-18)"
 case present10case3 = "Allert is 1-0 > (-18) && <= (-2)"
 case present10case4 = "Allert is 1-0 > (-2) && <= 6"
 case present10case5 = "Allert is 1-0 > 6 && <= 20"
 case present10case6 = "Allert is 1-0 > 20 && <= 50"
 case present10case7 = "Allert is 1-0 > 50"
 
 case message10case2 = "Level 2 + Level 3 + Level 5 + Level 7 + Level 7A"
 case message10case3 = "Level 1 + Level 2 + Level 5 + Level 7"
 case message10case4 = "Level 1 + Level 2 + Cammies or Level 5"
 //1-1
 case present11case1 = "Allert is 1-1 <= (-46)"
 case present11case2 = "Allert is 1-1 > (-46) && <= (-18)"
 case present11case3 = "Allert is 1-1 > (-18) && <= (-2)"
 case present11case4 = "Allert is 1-1 > (-2) && <= 6"
 case present11case5 = "Allert is 1-1 > 6 && <= 20"
 case present11case6 = "Allert is 1-1 > 20 && <= 50"
 case present11case7 = "Allert is 1-1 > 50"
 
 case message11case2 = "Level 2 + Level 3 + Level 5 + Level 7 + Level 7A + Level 7 type 2"
 case message11case3 = "Level 2 + Level 3 + Level 5 + Level 7"
 case message11case4 = "Level 1 + Level 3 + Level 5 + Level 6"
 case message11case5 = "Level 1 + Cammies + Level 4 + Level 6"
 case message11case6 = "Level 1 or Cammies + Level 6"
 }
 */
