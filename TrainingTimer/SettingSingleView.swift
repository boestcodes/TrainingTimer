//
//  SettingSingleView.swift
//  TrainingTimer
//
//  Created by Björn Oesterwinter on 22.10.25.
//

import SwiftUI

struct SettingSingleView: View {
    
    var typeOfIntervall: String = "Training"
    var backColor: Color = .white
    @Binding var countOf: Int
    
    
    var body: some View {
        VStack{
            Text(typeOfIntervall)
                .font(.largeTitle)
                .padding()
            HStack{
                Button{
                    countOf -= 1
                } label: {
                    Image(systemName: "minus")
                }
                .buttonStyle(.glassProminent)
                
                Text("\(countOf)")
                    .font(.largeTitle)
                    .padding()
                
                Button{
                    countOf += 1
                } label: {
                    Image(systemName: "plus")
                }
                .buttonStyle(.glassProminent)
            }
           
                
        }
        .frame(minWidth: 300, minHeight: 200)
        .background(RoundedRectangle(cornerRadius: 20)
            .fill(backColor))
    }
}

#Preview {
    //SettingSingleView()
}
