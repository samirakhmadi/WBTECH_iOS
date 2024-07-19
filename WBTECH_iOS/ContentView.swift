//
//  ContentView.swift
//  WBTECH_iOS
//
//  Created by Samir on 07.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showingChatScreen = false

    var body: some View {
        VStack {
            Spacer()
            
            // Иллюстрации
            HStack {
                Spacer()
                
                VStack {
                    Image("Illustration")
                        .resizable()
                        .frame(width: 250, height: 250)
                }
                
                Spacer()
            }
            .padding(.bottom, 30) // Отступ снизу картинки
            
            Text("Общайтесь с друзьями и близкими легко")
                .font(.title3)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .lineLimit(4)
                .padding([.top, .leading, .trailing], 13.0)
                .accessibilityLabel("Label")
            
            Spacer()
            
            Text("Пользовательское соглашение")
                .font(.body)
                .fontWeight(.medium)
                
            
            // Кнопка "Начать общаться"
            ChatButton(action: {
                showingChatScreen.toggle()
            })
            .padding()
            .sheet(isPresented: $showingChatScreen) {
                PhoneAuthView()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
