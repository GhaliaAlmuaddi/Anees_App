//
//  CardView.swift
//  test
//
//  Created by Hasna Ahmed on 26/03/1445 AH.
//

import SwiftUI

struct CardView: View {
    
    var image = ""
    var description = "text"
    
    var body: some View {
        ZStack{
            Color("Beige")
            VStack{
                Image(image)
                    .resizable()
                    .padding()
                
                HStack{
                    Text(description)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.trailing)
                        .padding(8)
                }
                    .frame(width: 161, height: 100).background(Color.white)
                    
            }
            
        }.frame(width: 161 , height: 262)
            .cornerRadius(19)
            .padding(10)
    }
}

#Preview {
    CardView()
}
