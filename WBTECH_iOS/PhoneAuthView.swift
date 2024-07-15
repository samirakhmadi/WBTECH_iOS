//
//  PhoneAuthView.swift
//  WBTECH_iOS
//
//  Created by Samir on 14.07.2024.
//

import SwiftUI

struct CountryCode: Identifiable, Hashable {
    var id = UUID()
    var flag: String
    var code: String
    var name: String
}

struct PhoneAuthView: View {
    @State private var phoneNumber: String = ""
    @State private var showingProgress = false
    @State private var selectedCountryCode: CountryCode = CountryCode(flag: "🇷🇺", code: "+7", name: "Russia")

    let countryCodes = [
        CountryCode(flag: "🇺🇸", code: "+1", name: "USA"),
        CountryCode(flag: "🇷🇺", code: "+7", name: "Russia"),
        CountryCode(flag: "🇬🇧", code: "+44", name: "UK"),
        CountryCode(flag: "🇩🇪", code: "+49", name: "Germany"),
        CountryCode(flag: "🇮🇳", code: "+91", name: "India"),
        CountryCode(flag: "🇨🇦", code: "+1", name: "Canada"),
        CountryCode(flag: "🇫🇷", code: "+33", name: "France"),
        CountryCode(flag: "🇮🇹", code: "+39", name: "Italy"),
        CountryCode(flag: "🇯🇵", code: "+81", name: "Japan")
    ]

    var body: some View {
        VStack {
            if showingProgress {
                ProgressView()
                    .scaleEffect(2)
                    .padding()
            } else {
                Text("Введите номер телефона")
                    .font(.title)
                    .padding()
                
                Text("Мы вышлем код подтверждения на указанный номер")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom)

                HStack {
                    Picker("Выберите код страны", selection: $selectedCountryCode) {
                        ForEach(countryCodes) { code in
                            Text("\(code.flag) \(code.code)")
                                .tag(code)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .frame(width: 120) 
                    .clipped()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    
                    TextField("000 000-00-00", text: $phoneNumber)
                        .keyboardType(.phonePad)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
                .padding([.leading, .trailing], 20)
                
                Button(action: {
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
                .padding([.leading, .trailing], 20)
            }
        }
        .padding()
    }
}

struct PhoneAuthView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneAuthView()
    }
}
