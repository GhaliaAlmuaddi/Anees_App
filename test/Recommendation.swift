//
//  Recommendation.swift
//  test
//
//  Created by Ghalia Mohammed Al Muaddi on 27/03/1445 AH.
//

import SwiftUI

struct Recommendation: View {
    
    //contents.append(obj1)
    @State var contents: Contents?
    var selectedFeeling : String
    var selectedCatrgory : String
    
    let Conttents_array = [
        
        //MARK: angry drinks
        
        Contents(Content_title: "مشروب الليمون", Content_description:  "مشروب الليمون من المشروبات الرائعة التي تساعد على تهدئة الأعصاب بشكل كبير، كما أن الليمون يساعد على علاج الاكتئاب بشكل فعال، ويمكنك تناول كوب من مشروب الليمون يومياً في الصباح." , Content_image: "ليمون", Content_link: "https://youtube.com/shorts/Mi7Y_A7iUhE?si=hmjIaVeDvyB2MYw7", feeling_type: "angry" , Category : "مشروبات"),
        
        Contents(Content_title: "شاي اليانسون", Content_description:  "اليانسون مفيد جدا في تهدئة الأعصاب، حيث يحتوي على الكثير من الفيتامينات والمعادن؛ ويسهم في السيطرة على معدل ضربات القلب وضغط الدم." , Content_image: "يانسون", Content_link: "https://youtu.be/YRGqTcHdIJs?si=yGiJPoM64zEgQXz7", feeling_type: "angry" , Category : "مشروبات"),
        
        Contents(Content_title: "الشاي الأخضر", Content_description: "يحتوي الشاي الأخضر على مادة الثيانين، والتي تساعد على تحسين المزاج والتقليل من ضربات القلب المرتفعة التي تزيد الشعور بالتوتر.", Content_image: "شاي-اخضر", Content_link: "https://youtube.com/shorts/mFDfijq1LBQ?si=e30qK4Kwq2O4ZIZF", feeling_type: "angry" , Category : "مشروبات"),
        
        
        
        //MARK: Worry drinks
        
        Contents(Content_title: "الزنجبيل", Content_description:  "يؤثر الزنجبيل على مستوى هرمون السيروتونين مما  يساعد على تهدئة الجسم من التوتر و القلق. " , Content_image: "زنجبيل", Content_link: "https://www.youtube.com/watch?v=pWGGAA0FUtw", feeling_type: "worry" , Category : "مشروبات"),
        
        Contents(Content_title: "شاي البابونج", Content_description:  "شاي البابونج يندرج ضمن قائمة مشروبات تخفف التوتر والقلق، إذ يشتهر مشروب البابونج بدوره في مدك بالراحة والاسترخاء." , Content_image: "بابونج", Content_link: "https://www.youtube.com/shorts/kGvjGcfzj64", feeling_type: "worry" , Category : "مشروبات"),
        
        Contents(Content_title: "عصير الشمندر", Content_description: "عتبر عصير البنجر مشروب يساعدك  على تخفيف الضغوط لاحتوائه النترات.", Content_image: "شمندر", Content_link: "https://www.youtube.com/shorts/bRtrNS8PKR8", feeling_type: "worry" , Category : "مشروبات"),
        
        
        //MARK: Sad drinks
        
        Contents(Content_title: "حليب الشوكلاتة", Content_description: "تعرف الشوكلاته بميزتها لرفع هرمون السعادة مثل الدوبامين اللذي بدوره يقلل من الاحساس بالحزن.", Content_image: "تشوكلت", Content_link: "https://www.youtube.com/watch?v=q6TAsQ5zbVI", feeling_type: "sad" , Category : "مشروبات"),
        
        Contents(Content_title: "الشاي الأخضر", Content_description: "يعد الشاي الأخضر من الأعشاب التي تعمل على زيادة هرمون السعادة في جسم الإنسان، وخاصة كل من هرمون الدوبامين والسيروتونين.", Content_image: "شاي-اخضر", Content_link: "https://youtube.com/shorts/mFDfijq1LBQ?si=e30qK4Kwq2O4ZIZF", feeling_type: "sad" , Category : "مشروبات"),
        
        Contents(Content_title: "الميموزا", Content_description: "الميموزا: يعرف هذا النوع من الأعشاب أيضا باسم (المستحية)، وهذه العشبة بالإضافة لكونها توصف كمضاد حيوي، فهي مفيدة جدا للقضاء على مشاعر الاكتئاب والتوتر والحزن.", Content_image: "شاي-اخضر", Content_link: "https://youtube.com/shorts/mFDfijq1LBQ?si=e30qK4Kwq2O4ZIZF", feeling_type: "sad" , Category : "مشروبات"),
        
        
        
        //MARK: lazy drinks
        
        
        Contents(Content_title: "القهوة" , Content_description: "تعتبر القهوة بأنواعها عالية بالكافيين اللذي  يساعد على التركيز و زيادة النشاط مما يقل لديك الاحساس بالخمول والكسل ", Content_image: "قهوة", Content_link: "https://www.youtube.com/watch?v=TpZ2uVtMoVU", feeling_type: "lazy" , Category : "مشروبات"),
        
        Contents(Content_title: "الماتشا" , Content_description: "يعزز الماتشا طاقة الجسم ويجعل الإنسان يشعر بالنشاط والحيوية، نظراً لأنه غنى جداً بالحمض الأميني.", Content_image: "ماتشا", Content_link: "https://www.youtube.com/shorts/ucou79BrLrI", feeling_type: "lazy" , Category : "مشروبات"),
        
        Contents(Content_title: "شاي القراص" , Content_description: "شاي القراص هو مشروب دافئ يتم تحضيره من نبتة القراص التي تعرف علميًّا باسم (Urtica dioica) يعزز النشاط والحيوية في جسم الانسان و يشيع استخدامه في وصفات الطب البديل في العديد من دول العالم.", Content_image: "القراص", Content_link: "https://youtube.com/shorts/uPiTExUklVc?si=fJzb6fW2nyIGTWNL", feeling_type: "lazy" , Category : "مشروبات"),
        
        
        
        //MARK: sad sport
        
        Contents(Content_title: "تمارين البيلاتس", Content_description: "تساعد تمارين بيلاتس على الحد من الإجهاد والتوتر وتحقق الاسترخاء من خلال التركيز على التنفس والاسترخاء خلال هذا التمرين.", Content_image: "بيلاتس", Content_link: "https://mawdoo3.com/ما_هي_رياضة_البيلاتس", feeling_type: "sad" , Category : "رياضة"),
        
        Contents(Content_title: "الملاكمة", Content_description: "تساعد رياضة الملاكمة على تحرير شحنات الغضب والضغط النفسى من خلال ضرب كيس الملاكمة أو Bunch bag، وخلال الاستراحة بين جولات الملاكمة يتم زيادة إفراز هرمون الأندروفين، وهو من هرمونات السعادة.", Content_image: "ملاكمة", Content_link: "https://youtu.be/kKDHdsVN0b8?si=TI3_YyjN894DoXGHw", feeling_type: "sad" , Category : "رياضة"),
        
        Contents(Content_title: "الرقص", Content_description: "يعتبر الرقص رياضة كذلك ويساهم في تحسين المزاج", Content_image: "رقص", Content_link: "https://www.youtube.com/watch?v=ujREEgxEP7g", feeling_type: "sad" , Category : "رياضة"),
        
        //MARK: angry sport
        
        Contents(Content_title: "الملاكمة", Content_description: "تساعد رياضة الملاكمة على تحرير شحنات الغضب والضغط النفسى من خلال ضرب كيس الملاكمة أو Bunch bag، وخلال الاستراحة بين جولات الملاكمة يتم زيادة إفراز هرمون الأندروفين، وهو من هرمونات السعادة.", Content_image: "ملاكمة", Content_link: "https://youtu.be/kKDHdsVN0b8?si=TI3_YyjN894DoXGH", feeling_type: "angry" , Category : "رياضة"),
        
        Contents(Content_title: "المشي", Content_description: "يمكن أن يساعد المشي لمدة 15 دقيقة في زيادة الطاقة في الجسم، يمكن البدء بتمارين صغيرة حتى يصبح الشخص قادرًا على ممارسة ساعتين و 30 دقيقة من التمارين متوسطة الشدة", Content_image: "مشي", Content_link: "https://www.aljazeera.net/amp/health/2022/11/8/المشي-مشي-سريع", feeling_type: "angry" , Category : "رياضة"),
        
//        Contents(Content_title: "، صوتيات بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "angry" , Category : "رياضة"),
        
        //MARK: lazzy sport
        
        Contents(Content_title: "اليوغا", Content_description: "عتبر اليوغا من اسهل و الطف الرياضات التي لا تتطلب جهد كبير مما يجعله تمرين سهل و غير صعب  لمن يعاني من الخمول ويساعد على التخلص منه", Content_image: "يوغا", Content_link: "https://www.hiamag.com/صحة/حمية-و-رشاقة/1213616-7-تمارين-يوغا-للتخلص-من-التوتر-و-الضغط-النفسي", feeling_type: "lazy" , Category : "رياضة"),
        
        Contents(Content_title: "المشي", Content_description: "يمكن أن يساعد المشي لمدة 15 دقيقة في زيادة الطاقة في الجسم، يمكن البدء بتمارين صغيرة حتى يصبح الشخص قادرًا على ممارسة ساعتين و 30 دقيقة من التمارين متوسطة الشدة", Content_image: "مشي", Content_link: "ww.wwlink", feeling_type: "lazy" , Category : "رياضة"),
        
//        Contents(Content_title: "، صوتيات بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "lazy" , Category : "رياضة"),
        
        //MARK: worry sport
        
        Contents(Content_title: "تمارين البيلاتس", Content_description: "تساعد تمارين بيلاتس على الحد من الإجهاد والتوتر وتحقق الاسترخاء من خلال التركيز على التنفس والاسترخاء خلال هذا التمرين.", Content_image: "بيلاتس", Content_link: "https://www.youtube.com/watch?v=tYddPTEfS_8", feeling_type: "worry" , Category : "رياضة"),
        
        Contents(Content_title: "تمارين المقاومة", Content_description: "تساعد هذه التمارين على تحسين الثقة بالنفس وبناء العضلات والحد من القلق والتوتر، وبحسب أحدث الدراسات فإن تمارين المقاومة تساعد على تحسين الإدراك وتحسين أداء الجهاز العصبي المركزي، وهذا له تأثير كبير على المزاج ومستويات التعب والإجهاد.", Content_image: "مقاومة", Content_link: "https://www.youtube.com/watch?v=TYSqZimr2yk", feeling_type: "worry" , Category : "رياضة"),
        
        Contents(Content_title: "اليوغا", Content_description: "تساعد اليوغا على تخليص الجسم من التوتر عن طريق حركات معينة ", Content_image: "يوغا", Content_link: "https://www.youtube.com/playlist?list=PLtoPgTTLNMmNOLyl0DLiUbT3r4VUGsyYc", feeling_type: "worry" , Category : "رياضة"),
        
        
        
        
        //MARK: sad sounds

        Contents(Content_title: "، صوتيات بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "sad" , Category : "صوتيات"),
        
        Contents(Content_title: "، صوتيات بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "sad" , Category : "صوتيات"),
        
        Contents(Content_title: "، صوتيات بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "sad" , Category : "صوتيات"),
        
        //MARK: lazzy sounds

        Contents(Content_title: "، صوتيات بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "lazy" , Category : "صوتيات"),
        
        Contents(Content_title: "، صوتيات بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "lazy" , Category : "صوتيات"),
        
        Contents(Content_title: "، صوتيات بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "lazy" , Category : "صوتيات"),
        
        
        //MARK: worry sounds

        Contents(Content_title: "، صوتيات بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "worry" , Category : "صوتيات"),
        
        Contents(Content_title: "، صوتيات بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "worry" , Category : "صوتيات"),
        
        Contents(Content_title: "، صوتيات بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "worry" , Category : "صوتيات"),
        
        //MARK: angry sounds

        Contents(Content_title: "، صوتيات بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "angry" , Category : "صوتيات"),
        
        Contents(Content_title: "، صوتيات بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "angry" , Category : "صوتيات"),
        
        Contents(Content_title: "، صوتيات بودكاست تنفس - كنبة السبت", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "angry" , Category : "صوتيات"),
        
        
        
        //MARK: sad books
        Contents(Content_title: "بودكاست تنفس - كنبة السبت ، رياضه ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "sad" , Category : "كتب"),
        
        Contents(Content_title: "بودكاست تنفس - كنبة السبت ، رياضه ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "sad" , Category : "كتب"),
        
        Contents(Content_title: "بودكاست تنفس - كنبة السبت ، رياضه ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "sad" , Category : "كتب"),
        
        //MARK: worry books
        Contents(Content_title: "بودكاست تنفس - كنبة السبت ، رياضه ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "worry" , Category : "كتب"),
        
        Contents(Content_title: "بودكاست تنفس - كنبة السبت ، رياضه ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "worry" , Category : "كتب"),
        
        Contents(Content_title: "بودكاست تنفس - كنبة السبت ، رياضه ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "worry" , Category : "كتب"),
        
        //MARK: angry books
        Contents(Content_title: "بودكاست تنفس - كنبة السبت ، رياضه ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "angry" , Category : "كتب"),
        
        Contents(Content_title: "بودكاست تنفس - كنبة السبت ، رياضه ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "angry" , Category : "كتب"),
        
        Contents(Content_title: "بودكاست تنفس - كنبة السبت ، رياضه ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "angry" , Category : "كتب"),
        
        //MARK: lazy books
        Contents(Content_title: "بودكاست تنفس - كنبة السبت ، رياضه ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "lazy" , Category : "كتب"),
        
        Contents(Content_title: "بودكاست تنفس - كنبة السبت ، رياضه ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "lazy" , Category : "كتب"),
        
        Contents(Content_title: "بودكاست تنفس - كنبة السبت ، رياضه ", Content_description: "نكبر فتكبر مهامنا وتكثر مسؤولياتنا، فيكبر قلقنا عشرات المرات، وبدلًا من أن يعمل القلق عمله الحقيقي في دفعنا لحياة أفضل، على العكس تمامًا، يشغلنا عن الحياة بأكملها..وننسى حتى كيف نتنفّس", Content_image: "كنبة السبت", Content_link: "ww.wwlink", feeling_type: "lazy" , Category : "كتب"),
    
        
        
]
    
    var body: some View {
        
      
            ZStack{
                Text("")
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

                                
                        var content = contents
                        if let content = flag_Updating(CategoryTitle: selectedCatrgory , FeelingName: selectedFeeling, c_array: Conttents_array){
                        
                                Image(content.Content_image  ).resizable().frame(width: 305.78 , height:293 ).cornerRadius(30).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)//.offset(y:50)
                                    .multilineTextAlignment(.center)
                                
                                Text(content.Content_title  ).lineSpacing(1).padding().multilineTextAlignment(.center).bold()
                                    .font(.system(size: 20))
                                Text(content.Content_description  ).multilineTextAlignment(.trailing).padding(20)
                                
                                
                                Link("للتفاصيل", destination: URL(string : content.Content_link )!).foregroundColor(.blue)
                                
                                
                            
                        }}}.toolbar {
                            ToolbarItem(placement: .primaryAction) {
                                Button(action: {
                                    contents = flag_Updating(CategoryTitle: selectedCatrgory, FeelingName: selectedFeeling, c_array: Conttents_array)
                                }) {
                                    Image(systemName: "arrow.2.squarepath")
                                        .font(.system(size: 15))
                                }.navigationTitle(contents?.Category ?? "")
                            }
                        }
             
        }
        func flag_checking(CategoryTitle: String, FeelingName: String, c_array: Array<Contents>) -> Contents? { return c_array.first { content in content.Category == CategoryTitle && content.feeling_type == FeelingName } }
        
        
        //    Func for Updating :
        
        func flag_Updating(CategoryTitle: String, FeelingName: String, c_array: Array<Contents>) -> Contents? { let c_array = c_array.shuffled(); return c_array.first { content in content.Category == CategoryTitle && content.feeling_type == FeelingName } }
    }
    public class Contents {
        var Content_title : String
        var Content_description : String
        var Content_image : String
        var Content_link : String
        var feeling_type : String
        var Category : String
        
        
        
        // var object : Contents
        
        init(Content_title: String, Content_description: String, Content_image: String, Content_link: String, feeling_type: String, Category: String) {
            
            self.Content_title = Content_title
            self.Content_description = Content_description
            self.Content_image = Content_image
            self.Content_link = Content_link
            self.feeling_type = feeling_type
            self.Category = Category
            
        }
    }

    #Preview {
        Recommendation(selectedFeeling: "", selectedCatrgory: "")
    }
    
    
