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
        
        ZStack{
            
            Color("BackgroundColor")
                .ignoresSafeArea(.all)
            
            Rectangle().fill(Color("BlueOne"))
                .frame(width: 500, height:500)
                .position(x:150,y:130)
                .ignoresSafeArea()
            
            VStack{

                Text("") // we added the Category here
                    .foregroundColor(Color("Beige"))
                    .multilineTextAlignment(.center).font(.title)
                    .toolbar{
                        Button{
//                            Recommendation.flag_Updating(CategoryTitle: Content_title, FeelingName: feeling_type, c_array: Recommendation.Conttents_array)
                            
                            
//                             var s = Recommendation(selectedFeeling: feeling_type, selectedCatrgory: Category )
                        }label: {
                            Image(systemName: "arrow.2.squarepath")
                                .font(.system(size: 15))

                        }.navigationTitle(Category)
                        
                        
                            
                   }

                    Image(Content_image).resizable().frame(width: 305.78 , height:293 ).cornerRadius(30).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)//.offset(y:50)
                        .multilineTextAlignment(.center)

                Text(Content_title).lineSpacing(1).padding().multilineTextAlignment(.center).bold()
                    .font(.system(size: 20))
                    Text(Content_description).multilineTextAlignment(.trailing).padding(20)

                
                Link("للتفاصيل", destination: URL(string : Content_link)!).foregroundColor(.blue)
            }

        }
    }
}


        
  

#Preview {
    ContentsBaseView(Content_title : "" , Content_description : "" , Content_image : "" ,Content_link : "ww.wwlink" , feeling_type: "" , Category : "" )
}
