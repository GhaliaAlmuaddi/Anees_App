//
//  Recommendation.swift
//  test
//
//  Created by Ghalia Mohammed Al Muaddi on 27/03/1445 AH.
//

import SwiftUI

struct Recommendation: View {
  
    //contents.append(obj1)
    
    var selectedFeeling : String
    var selectedCatrgory : String
    var body: some View {
       
        
        Text("")
       
        
        //       static var obj1 = ContentsBaseView(Content_title: "بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "Worry" , Category : "Audio")
        
        
//         VStack{
//         /* NavigationView{
//          Text("")
//          .toolbar{
//          Button("تحديث"){}
//          Text("الصوتيات")
//          .multilineTextAlignment(.center)
//          }} */
//         ZStack{
//         Rectangle().fill( Color("BlueOne")).frame(width: 500, height:500).position(x:150,y:130)
//         Image("كنبة السبت").resizable().frame(width: 305.78 , height:293 ).cornerRadius(30).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).position(x: 180, y: 255)
//         }.padding() //End of Zstack
//         VStack{
//         Text(" selected feeling \(selectedFeeling) , selected catorgy \(selectedCatrgory)").lineSpacing(1).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding()
//         Text("نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس").multilineTextAlignment(.trailing).padding(20)
//         }.offset(x:10 , y:-76)
//         Button(action: {
//             print(" selected feeling \(selectedFeeling) , selected catorgy \(selectedCatrgory)")
//         /*   Link(Destination: URL(string: "https://www.apple.com")!
//          )  */ }, label: {
//         
//         Text( "للاستماع").frame(width : 95, height :90 ,alignment: .center).background(.red).offset(y:-50).cornerRadius(8)
//         })
//         } //End of big Vstack
         
    } }
 
class Contents {
    var Content_title : String
    var Content_description : String
    var Content_image : String
    var Content_link : String
    var feeling_type : String
    var Category : String
    var contentsArray : Array<Contents>
    
    
   // var object : Contents
  
    
    init(Content_title: String, Content_description: String, Content_image: String, Content_link: String, feeling_type: String, Category: String,contentsArray : Array<Contents>) {
        
        self.Content_title = Content_title
        self.Content_description = Content_description
        self.Content_image = Content_image
        self.Content_link = Content_link
        self.feeling_type = feeling_type
        self.Category = Category
        
        self.contentsArray=contentsArray
        
    }

    
    
    
    
    
//   var content1=Contents(Content_title: "بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "Worry" , Category : "Audio")
////    
//var content2=Contents(Content_title: "بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "Worry" , Category : "Audio")
////    
// var content3=Contents(Content_title: "بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "Worry" , Category : "Audio")
    
    //contentsArray.append(content1)
}

#Preview {
    Recommendation(selectedFeeling: "", selectedCatrgory: "")
}
