//
//   ChatButton.swift
//  WBTECH_iOS
//
//  Created by Samir on 07.06.2024.
//


import SwiftUI

struct ChatButton: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("Начать общаться")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.purple)
                .cornerRadius(40)
        }
    }
}

struct ChatButton_Previews: PreviewProvider {
    static var previews: some View {
        ChatButton(action: {})
    }
}
