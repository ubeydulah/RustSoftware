//
//  KonuBaslik.swift
//  Dokumantasyontwo
//
//  Created by ubeyt on 9.01.2023.
//

import SwiftUI

struct KonuBaslik2: View {
    var body: some View {
        VStack{
            NavigationLink(destination: KonuBaslik()){
                
                
                if Bool.random(){
                    Text("Kitap Konvansiyonları")
                     //.underline()
                     .font(.system(size: 25))
                     .padding(70)
                         
                     //.frame(width: 190, height: 190)
                     .foregroundColor(Color.black)
                     .background(Color.white)
                     .cornerRadius(10)
                    
                }else {
                    Text("Kitap Konvansiyonları")
                     //.underline()
                     .font(.system(size: 25))
                     .padding(70)
                         
                     //.frame(width: 190, height: 190)
                     .foregroundColor(Color.white)
                     .background(Color.black)
                     .cornerRadius(10)
                }
                
                
                
           
                
            }
          
      
        ScrollView(.vertical){
            
            if Bool.random(){
                Text("Şuana kadar geliştirilen hiçbir programlama dili bize tam manalı paralelizm, statik tip tanımlamasında kesinlik, hafıza yönetiminde ve performansta güçlülük sağlamadı. Bunu yapan diller çok az olduğu gibi ata olan C bize tip tanımlamalarında zorluk ve hafıza yönetiminde güç kaybı yaşattı. Günümüzde meşhur olan scripting dillerine rağmen derlenebilir ve her ortamda çalışabilmesi öngörülen diğer derlenebilir dillerden farklı, komplex akışların uygulanabildiği dillere ihtiyaç duyuldu. Bu dillere örnek olarak Haskell ve OCaml verilebilir fakat bu diller altseviye dillerle aralarında soyut bir ayrım olduğu için düşük seviyeye yakın program yazımını zorlaştırıyordu. Bu zorluğu çözebilmek adına C ve C++’ın özelliklerinden de alınması ve harmanlanması gerekiyordu. Mozilla Arge’si tüm bunların sonucunda bütün iyi özellikleri alan bir programlama dili olan Rust’ı ortaya çıkardı.")
                        .font(.system(size: 23,weight: .medium))
                        .padding(10)
                        //.frame(width: 190, height: 190)
                        .cornerRadius(20)
                        .foregroundColor(.white) // Beyaz yazı rengi
                        .background(Color.black)
                
            }else {
                Text("Şuana kadar geliştirilen hiçbir programlama dili bize tam manalı paralelizm, statik tip tanımlamasında kesinlik, hafıza yönetiminde ve performansta güçlülük sağlamadı. Bunu yapan diller çok az olduğu gibi ata olan C bize tip tanımlamalarında zorluk ve hafıza yönetiminde güç kaybı yaşattı. Günümüzde meşhur olan scripting dillerine rağmen derlenebilir ve her ortamda çalışabilmesi öngörülen diğer derlenebilir dillerden farklı, komplex akışların uygulanabildiği dillere ihtiyaç duyuldu. Bu dillere örnek olarak Haskell ve OCaml verilebilir fakat bu diller altseviye dillerle aralarında soyut bir ayrım olduğu için düşük seviyeye yakın program yazımını zorlaştırıyordu. Bu zorluğu çözebilmek adına C ve C++’ın özelliklerinden de alınması ve harmanlanması gerekiyordu. Mozilla Arge’si tüm bunların sonucunda bütün iyi özellikleri alan bir programlama dili olan Rust’ı ortaya çıkardı.")
                        .font(.system(size: 23,weight: .medium))
                        .padding(10)
                        //.frame(width: 190, height: 190)
                        .cornerRadius(20)
                        .foregroundColor(.black) // Beyaz yazı rengi
                        .background(Color.white)
            }
            
            
            
            
            
       
             }
            HStack{
            NavigationLink(destination: KonuBaslik()){
           Text("<<Önceki Sayfa")
            .underline()
            .font(.headline)
            .padding()
            //.frame(width: 190, height: 190)
            
            .cornerRadius(10)
                
                
            }
                
                NavigationLink(destination: KonuBaslik3()){
               Text("Sonraki Sayfa>>")
                .underline()
                .font(.headline)
                .padding()
                //.frame(width: 190, height: 190)
                
                .cornerRadius(10)
                    
                    
                }
                }
        }
    }
}

struct KonuBaslik2_Previews: PreviewProvider {
    static var previews: some View {
        KonuBaslik2()
    }
}
