//
//  CodeInputView.swift
//  WBTECH_iOS
//
//  Created by Samir on 16.07.2024.
//

import SwiftUI

struct CodeInputView: View {
    @Binding var code: String
    var codeLength: Int = 4
    
    var body: some View {
        HStack(spacing: 15) {
            ForEach(0..<codeLength, id: \.self) { index in
                CodeCircleView(index: index, code: $code)
            }
        }
    }
}

struct CodeCircleView: View {
    var index: Int
    @Binding var code: String
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray, lineWidth: 2)
                .frame(width: 40, height: 40)
            
            if index < code.count {
                Text(String(code[code.index(code.startIndex, offsetBy: index)]))
                    .font(.title)
                    .foregroundColor(.black)
            } else {
                TextField("", text: Binding(
                    get: {
                        index < code.count ? String(code[code.index(code.startIndex, offsetBy: index)]) : ""
                    },
                    set: { newValue in
                        if newValue.count <= 1 {
                            let start = code.startIndex
                            let end = code.index(start, offsetBy: index)
                            code = String(code[..<start]) + newValue + String(code[end...])
                        }
                    }
                ))
                .font(.title)
                .frame(width: 40, height: 40)
                .multilineTextAlignment(.center)
                .keyboardType(.numberPad)
            }
        }
    }
}
