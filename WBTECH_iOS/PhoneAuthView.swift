//
//  PhoneAuthView.swift
//  WBTECH_iOS
//
//  Created by Samir on 14.07.2024.
//
import SwiftUI


struct PhoneAuthView: View {
    @State private var phoneNumber: String = ""
    @State private var showingProgress = false
    @State private var navigateToCodeInput = false
    @State private var selectedCountry = Country(code: "+7", flag: "🇷🇺")
    
    let countries = [
        Country(code: "+7", flag: "🇷🇺"),
        Country(code: "+1", flag: "🇺🇸"),
        Country(code: "+44", flag: "🇬🇧"),
        Country(code: "+49", flag: "🇩🇪")
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
                    Picker("Страна", selection: $selectedCountry) {
                        ForEach(countries, id: \.self) { country in
                            Text("\(country.flag) \(country.code)").tag(country)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .frame(width: 120)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                    
                    TextField("000 000-00-00", text: $phoneNumber)
                        .keyboardType(.phonePad)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)
                }
                .padding([.leading, .trailing], 20)
                
                NavigationLink(destination: VerificationCodeView(phoneAuthData: PhoneAuthData(phoneNumber: selectedCountry.code + " " + phoneNumber)), isActive: $navigateToCodeInput) {
                    EmptyView()
                }
                
                Button(action: {
                    withAnimation {
                        showingProgress = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            showingProgress = false
                            navigateToCodeInput = true
                        }
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
