//
//  GoalReachedButton.swift
//  CRUX2
//
//  Created by Sophie Bredenkamp on 3/31/21.
//

import SwiftUI

struct GoalReachedButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "checkmark.circle.fill" : "checkmark.circle")
                .foregroundColor(isSet ? Color.green : Color.gray)
        }
    }
}

struct GoalReachedButton_Previews: PreviewProvider {
    static var previews: some View {
        GoalReachedButton(isSet: .constant(true))
    }
}
