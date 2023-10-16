//
//  Splashview.swift
//  test
//
//  Created by Ghalia Mohammed Al Muaddi on 30/03/1445 AH.
//

import SwiftUI


//
//  Splashview
//
//  Created by Samar AlDasman
//

import SwiftUI

struct Splashview : View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            welcome_page()
        }else {
 
            ZStack{
                Color("BackgroundColor")
                    .ignoresSafeArea(.all)
                
                VStack{
                    //LOGO START HERE
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .offset(x:0,y:-30)
                        .frame(width: 350,height: 480)
                    
                /*    Text("أنــيــــس")
                        .font(.largeTitle)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .offset(x:0,y: -200)*/
                    
                } // vstack ends here
                
                // animation starts here
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.1)){
                        self.size = 1.0
                        self.opacity = 1.00
                    }
                    
                } // 1st on appear ends here
                
            } // zstack ends here
            
            
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                        
                    }
                    
                }
                
            } // 2ed on appear ends here
            
        } // if ends here
        
    } // end of the body
       
            }
       
 



#Preview {
    Splashview()
}
// end of view
