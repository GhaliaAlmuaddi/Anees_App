//
//  ContentView.swift
//  test
//
//  Created by Hasna Ahmed on 20/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: vars
    var angryImg  = "angry"
    var sadImg = "sad"
    var lazyImg = "lazy"
    var worryImg = "worry"
    var sadryDes = "حزن: يجعلك القلق تفكر في الأمور السلبية وتشعر بعدم الارتياح."
    var angryDec = "غضب: شعور بالإستياء والإستثارة النفسية مع الرغبة في المقاومة."
    var lazyDec = "خمول: شعور بالعجز عن القيام بالأنشطة اليومية بشكل فعّال."
    var worryDes = "قلق: يجعلك القلق تفكر في الأمور السلبية وتشعر بعدم الارتياح."
    
    @State var mood : String = ""
    
    var body: some View {
        NavigationView {
        VStack {
            
                //MARK: Title
                VStack(alignment:.trailing) {
                    Text("كيف تشعر الآن ؟ ")
                    
                        .font(.largeTitle).bold()
                        .multilineTextAlignment(.trailing)
                        .offset(CGSize(width: 50.0, height: 0.0))
                }
                
                
                //MARK: Cards Structure
                HStack{
                    
                    NavigationLink(destination: categoriesView(mood: "sad"), label: {
                            CardView(image: sadImg , description: sadryDes)
                        }).shadow(color: .gray, radius: 3, x: 0, y: 3)
                    
                    NavigationLink(destination: categoriesView(mood: "angry"), label: {
                        CardView(image: angryImg , description: angryDec)
                    }).shadow(color: .gray, radius: 3, x: 0, y: 3)
                    
                } // end of 1st hstack
                
                HStack{
                    
                    NavigationLink(destination: categoriesView(mood: "lazy"), label: {
                        CardView(image: lazyImg , description: lazyDec)
                    }).shadow(color: .gray, radius: 3, x: 0, y: 3)
                    
                    
                    NavigationLink(destination: categoriesView(mood: "worry"), label: {
                        CardView(image: worryImg , description: worryDes)
                    }).shadow(color: .gray, radius: 3, x: 0, y: 3)
                }// end of 2nd hstack
                
            }}.background(Color("BackgroundColor"))
            .ignoresSafeArea()
            
        
        // end of lower section
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
