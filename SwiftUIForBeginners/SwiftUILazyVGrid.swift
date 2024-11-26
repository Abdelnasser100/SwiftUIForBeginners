//
//  SwiftUILazyVStack.swift
//  SwiftUIForBeginners
//
//  Created by SA on 11/20/24.
//

import SwiftUI

struct SwiftUILazyVGrid: View {
    
    let columes:[GridItem] = [
//            GridItem(.fixed(60) ,spacing: nil, alignment: nil),                    GridItem(.fixed(60) ,spacing: nil, alignment: nil),
//            GridItem(.fixed(60) ,spacing: nil, alignment: nil),
//            GridItem(.fixed(60) ,spacing: nil, alignment: nil)
        
//        GridItem(.flexible() ,spacing: nil, alignment: nil),
//        GridItem(.flexible(minimum: 50, maximum: 100) ,spacing: nil, alignment: nil),
//        GridItem(.flexible() ,spacing: nil, alignment: nil)
        
        GridItem(.adaptive(minimum: 50, maximum: 100) ,spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        
        ScrollView{
            LazyVGrid(columns: columes, spacing: 20, pinnedViews: .sectionHeaders) {
                Section {
                    ForEach(1..<32){index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray.gradient)
                            .frame(height: 100)
                            .overlay(
                                Text("\(index)")
                                    .font(.title)
                                    .bold()
                            )
                    }
                } header: {
                    Text("January")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                }
                
                
                Section {
                    ForEach(1..<32){index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray.gradient)
                            .frame(height: 100)
                            .overlay(
                                Text("\(index)")
                                    .font(.title)
                                    .bold()
                            )
                    }
                } header: {
                    Text("February")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.yellow.gradient)
                }
            
            }
        }
        
    }
}

#Preview {
    SwiftUILazyVStack()
}
