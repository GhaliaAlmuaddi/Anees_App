
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
                            Text("يلا")
                            .bold()
                            .frame(width: 180,height: 45)
                            .background(
                            RoundedRectangle(cornerRadius: 10,style: .continuous)
                            .fill(.linearGradient(colors:[Color("blueTwo"), Color("blueTwo")], startPoint: .top, endPoint: .bottomTrailing))
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
