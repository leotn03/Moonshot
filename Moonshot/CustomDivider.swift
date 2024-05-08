//
//  Custom-Divider.swift
//  Moonshot
//
//  Created by Leo Torres Neyra on 11/1/24.
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    CustomDivider()
}
