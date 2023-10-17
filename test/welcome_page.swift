
        //
        //  welcome page.swift
        //  Anees
        //
        //  Created by Samar Ahmad Aldasman
        //

        import SwiftUI

        struct welcome_page: View {
            var body: some View {
             
                NavigationView{
                    ZStack{
                        Color("BackgroundColor")
                            .ignoresSafeArea(.all)
                        
                        //Welcome start here
                        Text("مـرحــبــا ! انــا")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(nil)
                            .offset(x:0,y: -250)
                        Text("أنـــــيـــــــس")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(nil)
                            .offset(x:0,y: -200)
                        
                        //
                        NavigationLink {
                            ContentView()
                        } label: {
                            Text("ابدأ")
                            .bold()
                            .frame(width: 180,height: 45)
                            .background( Color("BlueOne").opacity(0.4)
                                .cornerRadius(15)
  )
                            .foregroundColor(.black) }
                            .padding(.top)
                        .offset(y:110)
                        
                        
                        

                        //Anees
                        Image("Anees1")
                            .renderingMode(.none)
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .offset(x:-1,y:380)
                            .opacity(2)
                        
                        
                        
                    } //zstack end
                    
                }//Navsatack end
            } // end of the body
            
            
            
            
                }
      // end of view



#Preview {
    welcome_page()
}
