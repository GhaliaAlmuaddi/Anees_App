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
        GridItem(.adaptive(minimum: 170))
    ]
    
    private let titles = ["مشروبات", "صوتيات", "كتب", "رياضة"]
    var body: some View
    {
        NavigationView
        {
            ScrollView
            {
                VStack(alignment: .trailing)
                {
                    Text("أنيس يقترح لك")
                        .multilineTextAlignment(.trailing)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                }
                
                VStack
                {
                    LazyVGrid(columns:adaptiveColumns,spacing: 20)
                    {
                        ForEach(0..<4, id: \.self)
                        {
                            index in
                            let card = Card(imageName: "\(index + 1)",
                                            title: titles[index] )
                            CardViewA(card: card)
                        } //end foreach
                         
                    }//laze grid
                }//VStack
        }//Scroll
        .padding(.horizontal)
    }//navigation
            
}//body
}//struct

struct CardViewA: View {
    
    let card: categoriesView.Card
    
    var body: some View {
        Button( action: {
            print("Card \(card.title) tapped")})
        {
            
            //NavigationLink(destination: Recommendation())
            //                Button {
            //                    print("Card \(card.title) tapped"); label: do { NavigationLink( destination: Recommendation() ) } }
            
            ZStack{
                Rectangle()
                    .frame(width:170, height: 300)
                    .foregroundColor(Color(red: 0.3411764801, green: 0.4627451003, blue: 0.6352941394, opacity:1))
                    .cornerRadius(19)
                
                VStack
                {
                    if card.title == "مشروبات" {
                        Image(card.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        // .frame(width: 71, height:132)
                    }
                    else {
                        Image(card.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        //  .frame(width: 120)
                        
                    }
                    Text(card.title)
                        .font(.title)
                        .foregroundColor(Color(red: 0.949, green: 0.898, blue: 0.835))
                    
                    
                    
                } //Vstack
            }//Zstack
            
            
        }//body
    }//struct
    
}
#Preview {
    categoriesView(mood: "")
}

