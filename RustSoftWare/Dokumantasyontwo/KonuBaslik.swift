//
//  KonuBaslik.swift
//  Dokumantasyontwo
//
//  Created by ubeyt on 9.01.2023.
//

import SwiftUI

struct KonuBaslik: View {
    
    
    
    var body: some View {
        VStack{
            NavigationLink(destination: KonuBaslik()){
                
                
                if Bool.random(){
                    Text("Kitap Konvansiyonları")
                     //.underline()
                     .font(.system(size: 25))
                     .padding(100)
                         
                     //.frame(width: 190, height: 190)
                     .foregroundColor(Color.black)
                     .background(Color.white)
                     .cornerRadius(10)
                    
                }else {
                    Text("Kitap Konvansiyonları")
                     //.underline()  
                     .font(.system(size: 25))
                     .padding(100)
                         
                     //.frame(width: 190, height: 190)
                     .foregroundColor(Color.white)
                     .background(Color.black)
                     .cornerRadius(10)
                }
                
                
                
        
                
            }
          
      
        ScrollView(.vertical){
       
            
            if Bool.random() {
                Text("Bu Blogta mümkün olduğunca basit ve anlaşılır bir konvansiyon kullanmak istedim. Bundan dolayı sadece kodlar, uyarılar ve örnekler yer alacak.Kodların ve komutların yazım stili ise bu şekilde olacaktır.Uyarıların yazım stili italik olacak şekildedir. Örnekler ve kod parçacıkları(snippets) yine kod konvansiyonu şeklinde yazılacaktır.")
                    .foregroundColor(.white) // Beyaz yazı rengi
                    .background(Color.black) // Siyah arka plan rengi
            } else {
                Text("Bu Blogta mümkün olduğunca basit ve anlaşılır bir konvansiyon kullanmak istedim. Bundan dolayı sadece kodlar, uyarılar ve örnekler yer alacak.Kodların ve komutların yazım stili ise bu şekilde olacaktır.Uyarıların yazım stili italik olacak şekildedir. Örnekler ve kod parçacıkları(snippets) yine kod konvansiyonu şeklinde yazılacaktır.")
                    .foregroundColor(.black) // Siyah yazı rengi
                    .background(Color.white) // Beyaz arka plan rengi
            }
             }
            HStack{
            NavigationLink(destination: CardOne()){
           Text("<<Önceki Sayfa")
            .underline()
            .font(.headline)
            .padding()
            //.frame(width: 190, height: 190)
            
            .cornerRadius(10)
                
                
            }
                
                NavigationLink(destination: KonuBaslik2()){
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

struct KonuBaslik_Previews: PreviewProvider {
    static var previews: some View {
        KonuBaslik()
    }
}
