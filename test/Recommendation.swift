//
//  Recommendation.swift
//  test
//
//  Created by Ghalia Mohammed Al Muaddi on 27/03/1445 AH.
//

import SwiftUI

struct Recommendation: View {
    @State var contents: Contents?
    
    var selectedFeeling: String
    var selectedCategory: String
    
    let Conttents_array = [
            Contents(Content_title: "بودكاست تنفس - كنبة السبت، كتي ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "worry" , Category : "كتب"),
            
            Contents(Content_title: "، صوتيات بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "worry" , Category : "صوتيات"),
            
            Contents(Content_title: "بودكاست تنفس - كنبة السبت ، مشروبات ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "worry" , Category : "مشروبات"),
            
            Contents(Content_title: "بودكاست تنفس - كنبة السبت ، رياضه ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "worry" , Category : "رياضة"),
            
            Contents(Content_title: "بودكاست تنفس - كنبة السبhhت ، رياضه2 ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، ffffffff تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "worry" , Category : "رياضة")]
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
            
            Rectangle()
                .fill(Color("BlueOne"))
                .frame(width: 500, height: 500)
                .position(x: 150, y: 130)
                .ignoresSafeArea()
            
            VStack {
                Text("")
                
                if let content = contents {
                    Text(content.Content_title)
                        .font(.title)
                        .foregroundColor(Color("Beige"))
                    
                    Image(content.Content_image)
                        .resizable()
                        .frame(width: 305.78, height: 293)
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    
                    Text(content.Content_description)
                        .multilineTextAlignment(.trailing)
                        .padding(20)
                    
                    Link("للتفاصيل", destination: URL(string: content.Content_link)!)
                        .foregroundColor(.blue)
                }
                
                Button(action: {
                    contents = flag_Updating(CategoryTitle: selectedCategory, FeelingName: selectedFeeling, c_array: Conttents_array)
                }) {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 15))
                }
            }
        }
    }
    
    func flag_Updating(CategoryTitle: String, FeelingName: String, c_array: [Contents]) -> Contents? {
        let shuffledArray = c_array.shuffled()
        return shuffledArray.first { content in content.Category == CategoryTitle && content.feeling_type == FeelingName }
    }
    
    public class Contents {
        var Content_title: String
        var Content_description: String
        var Content_image: String
        var Content_link: String
        var feeling_type: String
        var Category: String
        
        init(Content_title: String, Content_description: String, Content_image: String, Content_link: String, feeling_type: String, Category: String) {
            self.Content_title = Content_title
            self.Content_description = Content_description
            self.Content_image = Content_image
            self.Content_link = Content_link
            self.feeling_type = feeling_type
            self.Category = Category
        }
    }
}

struct Recommendation_Previews: PreviewProvider {
    static var previews: some View {
        Recommendation(selectedFeeling: "", selectedCategory: "")
    }
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //    var content1=Contents(Content_title: "بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "Worry" , Category : "Audio")
    ////
    //var content2=Contents(Content_title: "بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "Worry" , Category : "Audio")
    ////
    // var content3=Contents(Content_title: "بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "Worry" , Category : "Audio")
    
    //contentsArray.append(content1)
    
    ///////////////////////////
    
    //        ForEach(0..<Conttents_array.count , id: \.self) { index in
    //            if(Conttents_array[index].Category==selectedCatrgory && Conttents_array[index].feeling_type==selectedFeeling){
    //                ContentsBaseView(Content_title: Conttents_array[index].Content_title, Content_description: Conttents_array[index].Content_description, Content_image: Conttents_array[index].Content_image, Content_link: Conttents_array[index].Content_link, feeling_type: Conttents_array[index].feeling_type, Category: Conttents_array[index].capacity)
    //                break
    //            }
    //        }
    
    
    ////////////////
    ///
    /////        flag_checking(CategoryTitle : selectedCatrgory , FeelingName : selectedFeeling , c_array : Conttents_array )
    
    
    //func flag_cheking(CatgeryTitle : String , FeelingName : String, c_array : Array<Contents>)  {
    //        for val in c_array {
    //            if(val.Category==CatgeryTitle && val.feeling_type==FeelingName){
    //                ContentsBaseView(Content_title: val.Content_title,Content_description: val.Content_description,Content_image: val.Content_image,Content_link: val.Content_link,feeling_type: val.feeling_type,Category: val.Category)
    //                break
    //            }
    //        }
    //    }
    
    
    
    //        Rectangle().fill( Color("BlueOne")).frame(width: 500, height:500).position(x:150,y:130)
    //        Image("كنبة السبت").resizable()//.frame(width: 305.78 , height:293 ).cornerRadius(30)
    //                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).position(x: 180, y: 255)
    //        }.padding() //End of Zstack
    //        VStack{
    //        Text(" selected feeling \(selectedFeeling) , selected catorgy \(selectedCatrgory)").lineSpacing(1).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding()
    //        Text("نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس").multilineTextAlignment(.trailing).padding(20)
    //        }//.offset(x:10 , y:-76)
    //        Button(action: {
    //            flag_Updating(CategoryTitle: selectedCatrgory, FeelingName: selectedCatrgory, c_array: Conttents_array)
    ////            print(" selected feeling \(selectedFeeling) , selected catorgy \(selectedCatrgory)")
    //        /*   Link(Destination: URL(string: "https://www.apple.com")!
    //         )  */ }, label: {
    //
    //        Text( "للاستماع").frame(width : 95, height :90 ,alignment: .center)
    //                 .background(.red).cornerRadius(8)
    //        })
    //        } //End of big Vstack

