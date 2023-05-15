//
//  CardOne.swift
//  Dokumantasyontwo
//
//  Created by ubeyt on 29.12.2022.
//

import SwiftUI

struct CardOne: View {
    
    let text = """
        Şuana kadar geliştirilen hiçbir programlama dili bize tam manalı paralelizm, statik tip tanımlamasında kesinlik, hafıza yönetiminde ve performansta güçlülük sağlamadı. Bunu yapan diller çok az olduğu gibi ata olan C bize tip tanımlamalarında zorluk ve hafıza yönetiminde güç kaybı yaşattı. Günümüzde meşhur olan scripting dillerine rağmen derlenebilir ve her ortamda çalışabilmesi öngörülen diğer derlenebilir dillerden farklı, komplex akışların uygulanabildiği dillere ihtiyaç duyuldu. Bu dillere örnek olarak Haskell ve OCaml verilebilir fakat bu diller altseviye dillerle aralarında soyut bir ayrım olduğu için düşük seviyeye yakın program yazımını zorlaştırıyordu. Bu zorluğu çözebilmek adına C ve C++’ın özelliklerinden de alınması ve harmanlanması gerekiyordu. Mozilla Arge’si tüm bunların sonucunda bütün iyi özellikleri alan bir programlama dili olan Rust’ı ortaya çıkardı.
    """
    
    
    
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Nedenler ve Amaçlar")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.red)
                ForEach(text.components(separatedBy: "\n\n"), id: \.self) { paragraph in
                    Text(paragraph)
                        .font(.system(size: 20, weight: .regular))
                        .foregroundColor(.gray)
                        .lineSpacing(10)
                }
                Spacer()
                NavigationLink(destination: Cards()) {
                    Text("Sonraki Sayfaya Geç")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 60)
                        .background(Color.red)
                        .cornerRadius(30)
                        .padding(.vertical, 20)
                }
            }
            .padding(20)
        }
    }
}



struct Cards: View {
    let text = """
        Rust esnektir. En belirgin özelliklerinden biri de bu özelliğidir. Esnekliğin sebebi tip tanımlamalarının zorunlu olmamasıdır. Tipleri keskinleştirip yumuşatmak ve birbirlerine çevrimini sağlamak sizin elinizdedir. Belirtilen her tip tanımlaması keskin tipi oluşturup dönüşümünü zor hale getirirken, belirtilmeyen tipler aynı isimli başka değişkenlerin oluşumuna engel olmaktadır. Bu iyi birşeydir ve aynı ada sahip iki tane farklı değişken oluşturabilmenize olanak sağlar.
        
        Rust aynı zamanda paralelizme önem verir, mesaj aktarımı yoluyla paralel çalışmayı destekler bu hafif ve işlemci yormayan bir sistemdir. Diğer bellek paylaşımlı çalışan sistemlere nazaran daha iyi bir performansı da beraberinde getirir.Başta da belirttiğimiz gibi yüksek seviyeli programlama dillerinden örnek alınan kompleks sistem dizaynına olanak sağlayan dereceli fonksiyon tanımlamalarına izin verir. Bu Haskell ve Ocaml’ın da bir özelliğidir. C’deki struct, enum ve typedef kalıplarını daha da güçlendirerek sunar. Rust birçok programlama dilinin uygulama biçimlerini de kendine dahil etmiştir, örnek olarak:
    
            • Go programlama dilinden yığın büyüme algoritması
    
            • SML’in veri yapıları
    
            • C#‘ın makine kodu oluşturma ve birleştirme sekansı
    
            • C++’ın hafıza referanslama ve destructor özelliği
    
            • Cyclone ve ML Kit’in hafıza belirleme ve sızıntı önleme sistemleri
    
            • Haskell’in tip sınıfları ve dönüşüm sistemleri
    
            • Python’ın lexer sistemi
    
            • Ruby’nin blok sentaksı (parantezlemesiz sistem)
        
        Rust tamamıyla orijinal bir dil değildir bunun nedeni tüm dillerin en güçlü özelliklerini alarak arındırılmış sentaksı ile tüm işleri başarabilen bir sisteme evrilme amacında olmasıdır. Rust gelecek senelerde en güçlü ve en kolay programlama dili olma, sistem kontrolü, paralelizm ve hata toleranslı sistemlerin çekirdeğinde rol alacak bir aracı olma misyonunu yüklenerek en iyi yere gelmeyi planlamaktadır.
    """
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Özellikler")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                ForEach(text.components(separatedBy: "\n\n"), id: \.self) { paragraph in
                    Text(paragraph)
                        .font(.system(size: 20, weight: .regular))
                        .foregroundColor(.gray)
                        .lineSpacing(10)
                }
                Spacer()
               
            }
            .padding(20)
        }
      }
    }













 
    struct CardOne_Previews: PreviewProvider {
        static var previews: some View {
            CardOne()
            Cards()
        }
    }
