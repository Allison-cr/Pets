//
//  CustomQuickInfo.swift
//  pets
//
//  Created by Alexander Suprun on 03.08.2023.
//

import Foundation
import SwiftUI

struct CustomGender: View {
    var genderType: GenderType
    var body: some View {
        ZStack {
            switch genderType {
            case .male:
                HStack(alignment: .center, spacing: 10) {
                    Text("Male")
                      .font(Font.custom("Sailec", size: 12))
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color("Male"))  }
                .padding(.horizontal, 12)
                .padding(.vertical, 5)
                .background(Color("Male").opacity(0.1))
                .cornerRadius(31)
            case .female:
                HStack(alignment: .center, spacing: 10) {
                    Text("Female")
                      .font(Font.custom("Sailec", size: 12))
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color("Female"))  }
                .padding(.horizontal, 12)
                .padding(.vertical, 5)
                .background(Color("Female").opacity(0.1))
                .cornerRadius(31)
            }
        }
    }
}
