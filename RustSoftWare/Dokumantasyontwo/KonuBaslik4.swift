//
//  KonuBaslik4.swift
//  Dokumantasyontwo
//
//  Created by ubeyt on 15.01.2023.
//

import SwiftUI

struct KonuBaslik4: View {
    var body: some View {
        VStack{
            NavigationLink(destination: KonuBaslik4()){
           Text("Parçalar ve İnşaa Sistemi Önbilgisi")
            //.underline()
            .font(.headline)
            .padding(70)
            //.frame(width: 190, height: 190)
            
            .cornerRadius(10)
                
                
            }
          
      
        ScrollView(.vertical){
        Text("Kurulum üç çalıştırılabilir ve kütüphanelerden oluşmaktadır. Bunlar: • rustc (Rust Derleyicisi) • rustdoc (Rust Dokümantasyon Oluşturucu) • cargo (Rust Paket Yöneticisi) • librustllvm, librustrt, libcore, libstd, librustc, libsyntax ve libmorestack kütüphaneleri (sistem oluşturulurken kullanılan diğer kütüphaneler önceden yazılmış açık kaynak kütüphanelerdir) İnşaa sistemi 3 fazdan oluşmaktadır her bir derleyici fazı kendinden sonraki derleyici fazını yapacak şekilde düzenlenmiştir. Faz.3 derleyicisi son derleyiciyi yaptığında(kendini) Faz.2 ile birebir aynı bir imaj oluşturur(kendini yapan ile). Bütün bu işlemlere ön-ayak olan ise bir önceki rust derleyicisi versiyonun son derleyicisidir. Bu derleyici yeni sistemin Faz.0‘ıdır")
                .font(.system(size: 19,weight: .medium))
                .padding(10)
                //.frame(width: 190, height: 190)
                .background(Color.orange)
                .foregroundColor(Color.white)
                .cornerRadius(20)
                .font(.headline)
             }
            HStack{
            NavigationLink(destination: KonuBaslik3()){
           Text("<<Önceki Sayfa")
            .underline()
            .font(.headline)
            .padding()
            //.frame(width: 190, height: 190)
            
            .cornerRadius(10)
                
                
            }
                
                NavigationLink(destination: KonuBaslik5()){
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

struct KonuBaslik4_Previews: PreviewProvider {
    static var previews: some View {
        KonuBaslik4()
    }
}
