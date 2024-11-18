//
//  SwiftUItext.swift
//  SwiftUIForBeginners
//
//  Created by SA on 11/11/24.
//

import SwiftUI

struct SwiftUItext: View {
    var body: some View {
        Text("Hello, World, This is Desigined For Beginners who want to learn swiftUi, i hope it will be enjoyed for you.")
//            .font(.title)
//            .fontWeight(.bold)
//            .foregroundStyle(.red)       //لون الخط
//            .font(.system(size: 32, weight: .black , design: .default))
//            .bold()
//            .underline(color: .blue)
//            .strikethrough(color:.red)       //خط في نص الكلام
//            .italic()
            .multilineTextAlignment(.center)
//            .baselineOffset(30)               // ازاي اشفت اشفت فوق وتحت
//            .kerning(2)                      // المسافة بين الحروف
//            .border(.black, width: 2)
//            .lineLimit(2)
         //   .minimumScaleFactor(2)
            .frame(width: 350, height: 350, alignment: .center )
            .border(.black, width: 2)
            .minimumScaleFactor(0.6)
            .foregroundStyle(.red)
        
    }
}

#Preview {
    SwiftUItext()
}
