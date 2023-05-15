//
//  KonuBaslik3.swift
//  Dokumantasyontwo
//
//  Created by ubeyt on 15.01.2023.
//

import SwiftUI

struct KonuBaslik3: View {
    var body: some View {
        VStack{
            NavigationLink(destination: KonuBaslik3()){
           Text("Özellikler")
            //.underline()
            .font(.headline)
            .padding()
            //.frame(width: 190, height: 190)
            
            .cornerRadius(10)
                
                
            }
          
      
        ScrollView(.vertical){
        Text("Rust esnektir. En belirgin özelliklerinden biri de bu özelliğidir. Esnekliğin sebebi tip tanımlamalarının zorunlu olmamasıdır. Tipleri keskinleştirip yumuşatmak ve birbirlerine çevrimini sağlamak sizin elinizdedir. Belirtilen her tip tanımlaması keskin tipi oluşturup dönüşümünü zor hale getirirken, belirtilmeyen tipler aynı isimli başka değişkenlerin oluşumuna engel olmaktadır. Bu iyi birşeydir ve aynı ada sahip iki tane farklı değişken oluşturabilmenize olanak sağlar. Rust aynı zamanda paralelizme önem verir, mesaj aktarımı yoluyla paralel çalışmayı destekler bu hafif ve işlemci yormayan bir sistemdir. Diğer bellek paylaşımlı çalışan sistemlere nazaran daha iyi bir performansı da beraberinde getirir. Başta da belirttiğimiz gibi yüksek seviyeli programlama dillerinden örnek alınan kompleks sistem dizaynına olanak sağlayan dereceli fonksiyon tanımlamalarına izin verir. Bu Haskell ve Ocaml’ın da bir özelliğidir. C’deki struct, enum ve typedef kalıplarını daha da güçlendirerek sunar.  Rust birçok programlama dilinin uygulama biçimlerini de kendine dahil etmiştir, örnek olarak:  • Go programlama dilinden yığın büyüme algoritması • SML’in veri yapıları • C#‘ın makine kodu oluşturma ve birleştirme sekansı • C++’ın hafıza referanslama ve destructor özelliği • Cyclone ve ML Kit’in hafıza belirleme ve sızıntı önleme sistemleri • Haskell’in tip sınıfları ve dönüşüm sistemleri • Python’ın lexer sistemi • Ruby’nin blok sentaksı (parantezlemesiz sistem) Rust tamamıyla orijinal bir dil değildir bunun nedeni tüm dillerin en güçlü özelliklerini alarak arındırılmış sentaksı ile tüm işleri başarabilen bir sisteme evrilme amacında olmasıdır. Rust gelecek senelerde en güçlü ve en kolay programlama dili olma, sistem kontrolü, paralelizm ve hata toleranslı sistemlerin çekirdeğinde rol alacak bir aracı olma misyonunu yüklenerek en iyi yere gelmeyi planlamaktadır")
                .font(.system(size: 19,weight: .medium))
                .padding(10)
                //.frame(width: 190, height: 190)
                .background(Color.orange)
                .foregroundColor(Color.white)
                .cornerRadius(20)
                .font(.headline)
             }
            HStack{
            NavigationLink(destination: KonuBaslik2()){
           Text("<<Önceki Sayfa")
            .underline()
            .font(.headline)
            .padding()
            //.frame(width: 190, height: 190)
            
            .cornerRadius(10)
                
                
            }
                
                NavigationLink(destination: KonuBaslik4()){
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

struct KonuBaslik3_Previews: PreviewProvider {
    static var previews: some View {
        KonuBaslik3()
    }
}
