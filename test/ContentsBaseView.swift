//
//  ContentsBaseView.swift
//  test
//
//  Created by Ghalia Mohammed Al Muaddi on 27/03/1445 AH.
//

import SwiftUI

struct ContentsBaseView: View {
    
    var Content_title : String
    var Content_description : String
    var Content_image : String
    var Content_link : String
    var feeling_type : String
    var Category : String

    
    
    var body: some View {
        VStack{
            //            NavigationView{
            Text("")
                .toolbar{
                    Button{
                        Recommendation.flag_Updating(CategoryTitle: Content_title, FeelingName: feeling_type, c_array: Recommendation.Conttents_array)
                    }label: {
                        Image(systemName: "arrow.2.squarepath")
                            .foregroundColor(Color("Beige"))
                    }
                    
                    Text("\(Category)")
                        .foregroundColor(Color("Beige"))
                        .multilineTextAlignment(.center)
                }
//        }
            ZStack{
                Rectangle().fill(Color("BlueOne"))
                    .frame(width: 500, height:500).position(x:150,y:130)
                Image(Content_image).resizable().frame(width: 305.78 , height:293 ).cornerRadius(30).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).offset(y:50).multilineTextAlignment(.center)
            }.padding() //End of Zstack
            VStack{
                Text(Content_title).lineSpacing(1).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding()
                Text(Content_description).multilineTextAlignment(.trailing).padding(20)
            }.offset(x:10 , y:-30)
            
            Button(action: {
             /*   Link(Destination: URL(string: "https://www.apple.com")!
           )  */ }, label: {
    
                Text("للاستماع")
                   
               
           })        }.ignoresSafeArea().padding() //End of big Vstack
    }
}


        
  

#Preview {
    ContentsBaseView(Content_title : "" , Content_description : "" , Content_image : "" ,Content_link : "" , feeling_type: "" , Category : "" )
}
