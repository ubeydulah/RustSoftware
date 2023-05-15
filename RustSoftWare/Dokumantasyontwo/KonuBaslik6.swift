//
//  KonuBaslik6.swift
//  Dokumantasyontwo
//
//  Created by ubeyt on 15.01.2023.
//

import SwiftUI

struct KonuBaslik6: View {
    var body: some View {
        
        
        VStack{
            NavigationLink(destination: KonuBaslik6()){
           Text("Editör Ve Geliştirme Ortamları")
            //.underline()
            .font(.headline)
            .padding(70)
            //.frame(width: 190, height: 190)
            
            .cornerRadius(10)
                
                
            }
          
      
        ScrollView(.vertical){
        Text("Rust kodu yazabilmek için çeşitli editörler ve destekler mevcuttur. Bunlara örnek vermek gerekirse Eclipse geliştirme ortamı, TextMate editörü, Vim ve Emacs editörleri verilebilir. TextMate için destek paketi: Rust.tmbundle Eclipse plugin desteği: Oxide Emacs ve Vim için destek ise rust’ın kendi kaynak kodunda src/etc dizini altında bulunmaktadır. Sublime Text 2 için Sublime Package Manager yoluyla Rust desteği yüklenebilir. KDE’nin editörü Kate için ise yine kaynak kodun src/etc/kate dizini altında desteğini bulabilirsiniz. Rust daha çok yeni bir dil olduğundan dolayı tam anlamıyla bağımsız bir IDE geliştirilmedi. Şimdilik elimizdeki editör ve destek miktarının bu kadar olduğunu belirtmekle yetinelim. Geliştirmeler oldukça kitabın yeni revizyonlarında bunları belirteceğim.")
                .font(.system(size: 19,weight: .medium))
                .padding(10)
                //.frame(width: 190, height: 190)
                .background(Color.orange)
                .foregroundColor(Color.white)
                .cornerRadius(20)
                .font(.headline)
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
                
           }
        }
    }
}

struct KonuBaslik6_Previews: PreviewProvider {
    static var previews: some View {
        KonuBaslik6()
    }
}
