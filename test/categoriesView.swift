//
//  ContentView.swift
//  Catogery
//
//  Created by Amani Almalki on 25/03/1445 AH.
//

import SwiftUI

struct categoriesView: View {
    var mood : String
    struct Card
    {
        let imageName: String
        let title: String
        
    }
    private let adaptiveColumns =
    [
        GridItem(.adaptive(minimum: 130),spacing: 20)
    ]
    
    private let titles = ["مشروبات", "صوتيات", "كتب", "رياضة"]
    var body: some View
    {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea(.all)
            
            VStack{
                Spacer()
                Text("ايش حاب تجرب ")
                    .font(.largeTitle).bold()
                    .multilineTextAlignment(.center)
                    .offset(CGSize(width: 50.0, height: 0.0))
                
                
                ScrollView
                {
                    VStack
                    {
                        LazyVGrid(columns:adaptiveColumns,spacing: 30)
                        {
                            ForEach(0..<titles.count, id: \.self)
                            {
                                index in
                                let card = Card(imageName: "\(index + 1)",
                                                title: titles[index] )
                                CardViewA(selectedMood: mood, card: card)
                                    .shadow(color: .gray, radius: 3, x: 0, y: 3)
                            } //end foreach
                            
                        }//laze grid
                    }//VStack
                    .padding(.horizontal)
                }//Scroll
            }
        }
    }//body
}//struct

struct CardViewA: View {
    
    var selectedMood : String
    let card: categoriesView.Card
    
    var body: some View {
        
      
    NavigationLink(destination: Recommendation(selectedFeeling: selectedMood, selectedCatrgory: card.title ), label:{
            GeometryReader
            {
                reader in
                VStack
                {
                    
                    Image(card.imageName)
                        .resizable()
                        .scaledToFit()
                    
                    Text(card.title)
                        .font(.title)
                        .foregroundColor(Color(red: 0.949, green: 0.898, blue: 0.835))
                } //Vstack
                .frame(width: reader.size.width,height: reader.size.height)
                .background(Color(red: 0.3411764801, green: 0.4627451003, blue: 0.6352941394, opacity:1))
            }
            .frame(width: 160, height: 260)
            .clipShape(RoundedRectangle(cornerRadius: 19))
            
            
    }//navigation
)}//body
}
                           
#Preview {
    categoriesView(mood: "")
}
                         
