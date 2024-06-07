//
//  ChatScreenView.swift
//  WBTECH_iOS
//
//  Created by Samir on 07.06.2024.
//


import SwiftUI

struct ChatScreenView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            Text("Добро пожаловать в чат!")
                .font(.largeTitle)
                .padding()
            
            Spacer()
            
            Button(action: {
                dismiss()
            }) {
                Text("Закрыть")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .cornerRadius(10)
                    .padding()
            }
        }
    }
}

struct ChatScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ChatScreenView()
    }
}

