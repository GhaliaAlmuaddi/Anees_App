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
        GridItem(.adaptive(minimum: 160)/*,spacing: 20*/)
    ]
    
    private let titles = ["مشروبات", "صوتيات", "كتب", "رياضة"]
    var body: some View
    {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea(.all)
            
            
            
            VStack{
                Spacer()
                
                VStack(alignment:.trailing){
                    Text("أنيس يقترح لك ...")
                        .font(.title).bold()
                        .offset(CGSize(width: 60.0, height: 0.0))
                        
                       
                    
                }.padding(.top, 40.0)
                
                ScrollView
                {
                    VStack
                    {
                        LazyVGrid(columns:adaptiveColumns/*,spacing: 20*/)
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
                    .padding(10)
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
                    
                    HStack{
                    Text(card.title)
                    .font(.title2)
                    .foregroundColor(Color("Beige"))
                    }
                   
                    
                } //Vstack
                .frame(width: reader.size.width,height: reader.size.height)
                .background(Color("BlueOne"))
            }
            
            .frame(height: 280)
            .clipShape(RoundedRectangle(cornerRadius: 19))
            .padding(8)
            
            
    }//navigation
            
)}//body
}
                           
#Preview {
    categoriesView(mood: "")
}
                         
