//
//  VerificationCodeView.swift
//  WBTECH_iOS
//
//  Created by Samir on 16.07.2024.
//

import SwiftUI

struct VerificationCodeView: View {
    @State var phoneAuthData: PhoneAuthData
    @State private var showingProgress = false
    
    var body: some View {
        VStack {
            if showingProgress {
                ProgressView()
                    .scaleEffect(2)
                    .padding()
            } else {
                Text("Введите код")
                    .font(.title)
                    .padding()
                
                Text("Отправили код на номер")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text(phoneAuthData.phoneNumber)
                    .font(.title2)
                    .padding(.bottom, 40)
                
                CodeInputView(code: $phoneAuthData.code)
                    .padding()
                
                Button(action: {
                    // Обработка отправки кода
                    withAnimation {
                        showingProgress = true
                    }
                }) {
                    Text("Продолжить")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.purple)
                        .cornerRadius(10)
                }
                .padding()
                
                Spacer()
                
                Button(action: {
                    // Обработка повторной отправки кода
                }) {
                    Text("Запросить код повторно")
                        .foregroundColor(.purple)
                        .padding()
                }
            }
        }
        .padding()
    }
}

struct VerificationCodeView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationCodeView(phoneAuthData: PhoneAuthData(phoneNumber: "+7 999 999-99-99"))
    }
}
