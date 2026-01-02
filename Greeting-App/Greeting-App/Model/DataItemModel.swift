//
//  DataItemModel.swift
//  Greeting-App
//
//  Created by mohnishsingh yadav on 01/01/26.
//

import SwiftUI

struct DataItemModel : Identifiable{
    let id = UUID()
    let text : LocalizedStringKey
    let color : Color
}
