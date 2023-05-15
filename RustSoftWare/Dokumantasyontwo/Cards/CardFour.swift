//
//  CardFour.swift
//  Dokumantasyontwo
//
//  Created by ubeyt on 29.12.2022.
//

import SwiftUI

struct CardFour: View {
    
    let text = """
                Tipler genel olarak C’deki gibidirler ve şu şekilde gösterilebilirler:
                
                    TİPLER | AÇIKLAMA
                        ()   --> Bir tek değer içeren birim
                
                        bool --> true veya false değerlerine sahip olan, Boolean
                
                        int, uint --> Üzerinde çalıştığı makinenin  tanımlamalarına bağlı işaretli ve işaretsiz tamsayılar, signed & unsigned integer.
                
                    i8, i16, i32, i64 --> Belirli bit büyüklüğünde işaretli tamsayılar, signed sized integers
                
                    u8, u16, u32, u64 --> Belirli bit büyüklüğünde işaretsiz tamsayılar, unsigned sized integers
                
                    float --> Üzerinde çalıştığı makinenin üzerinde genel konvansiyonda en iyi çalışabilecek en büyük ondalıklı sayı, float
                
                    f32, f64 --> Belirli bit büyüklüğünde ondalıklı sayılar, floating type
                
                    char --> Unicode karakter setini kullanan karakter (32 bit)
                
                Kompozit tipler de genel yapıları itibariyle aşağıdaki şekildedir. Burada her T bir başka tipi göstermektedir.
                
                
                    KOMPOZİT TİPLER | AÇIKLAMA
                
                [T * N] --> Vektör (Vektör diğer dillerdeki diziyi temsil eder)
                
                [mut T * N] --> Mutable vektör
                
                (T1, T2) --> Tuple tipleri
                
                &T, ~T, @T --> Pointer tipleri
                
                Bazı tipler hiçbir zaman pointer olmadan değiştirilemezler. Örneğin string olarak tanımlanmış değerlere ~, @ ve & işaretçilerinden biri kullanılmadan erişim yapılamaz. Bu kullanıma sahip olan tipler genellikle dinamik genişleyebilen(karakter, saf veri vb. ile) tiplerdir.
                
                Dinamik genişleyen tiplere ise şu örnekleri verebiliriz:
                
                Dinamik Genişleyen Tipler | Açıklama
                
                fn(a: T1, b: T2) -> T3 --> Fonksiyon tipleri
                
                str --> String(Katar) tipleri (UTF-8)
                
                [T] --> Uzunluğu bilinmeyen vektör (diğer adıyla dilim)
                
                [mut T] --> Uzunluğu bilinmeyen mutable vektör.
                
                
                Fonksiyon tiplerinde değer döndürme -> işareti ile belirtilir fonksiyon deklerasyonunda ise şu şekildedir:
                fn foo() -> bool { }
                
                Rust’ın en güzel özelliklerinden biri de anlamsız veya işinize yaramayan bir değer döndürmeniz gerektiğinde -> () şeklinde bir yazım yapabilmenizdir. Bunun yanında bu yazım yapılmasa da olur.
                
                Yeni tip tanımlamaları takmaad olarak da kullanılabilir ve şu şekilde tanımlanır:
                
                type BüyükVeri = uint;
                
                
                    Bu tanımlama BüyükVeri tipiyle uint tipini aynı bağlamda kullanabiliriz. Burada önemli olan kısım bu tanımlamada BüyükVeri ve uint tiplerinin birbirinden bağımsız olduklarını sanıp dönüştürülemeyeceğini düşünmektir, fakat durum böyle değildir veriler birbirlerine dönüştürülebilirler çünkü tipler saklanırken yapılarına göre saklanır BüyükVeri’nin özünde uint olduğu bilinmektedir.
                
                Rust’ta tiplerimizin ismen bağlanmasını ve yapısallıkla ilişki kurmamasını istiyorsak struct ve enum anahtar kelimelerini kullanabiliriz.
                
                Literaller
                
                Integerlar(tamsayı) decimal, hexadecimal veya binary formatlarda yazılabilirler. Bu yazımların tamamına integral tip denir. Tüm integral tipler son ek’e sahiptir ve  literalin çeşidini belirler. int için i, uint için u, int8 için i8 tipi gibi.
                
                Literaller konulmazsa Rust fonksiyon argümanları ve tip tanımlamalarıyla literal olmaksızın tanımlamayı tahmin eder ve ona göre yorumlar genellikle bu yorumlama sisteme en yakın varsayılan üzerinedir. Örnek olarak;
                
                let a = 1; // a varsayılan olarak int atanır
                
                let b = 10i; // b int oldu, i son ekinden dolayı
                
                let c = 100u; // c uint oldu
                
                let d = 1000i32;
                
                verilebilir.
                
                Sabitler
                
                Derleme zamanı sabitleri const anahtar kelimesi ile tanımlanır.
                
                const PAROLAM: int = 12345;
                
                const KATAR_PAROLAM: &static/str = "12345";
                
                const EV_PAROLAM: int = PAROLAM + 1;
                
                Operatörler
                
                Aritmetik operatörler
                
                *, /, %, +, - (çarp, böl, mod al, topla, çıkar) ayrıca - unary operatör olup sayıları negatif yapmakta kullanılır. C’deki gibi bit operatörleri >>, <<, &, |, ve ^ ‘dir.
                ! tüm bitleri ters çevirir ve C’deki ~ operatörü gibi.Rust’ın karşılaştırma operatörleri C’deki karşılaştırma operatörleriyle aynıdır.
                == , !=, <, >, <=, >=, &&, || gibi...
                
                Tip dönüşümü yaparken Rust as operatörünü kullanır. Örnek olarak
                
                let x: float = 4.0;
                
                let y: uint = x as uint;
                
                assert y == 4u;
                
                Sentaks Genişletmeleri
                
                Dilin saf haline entegre olmamış ama sonradan kütüphaneler yardımıyla dahil edilmiş özelliklerdir. Şu anda std::core kütüphanesi bu genişletmeleri yeterli  miktarda karşılamaktadır. C formatlamasının benzer özellikleri kütüphaneler yardımıyla alınmıştır. Katar formatlamanın geliştirilmesi gündemdedir.
                
                io::println(fmt!("%s bence %d", "cevap", 43));
                
                io::println(fmt!("Bu nedir %?", gizli_nesne));
                
                Yukarıdaki örneğimizde %? tüm tipleri içine alabilen ve manipüle ederek formata uyduran ibaredir. Dikkat ederseniz fmt!() olmadan formatlama yapılamamaktadır. Bu fonksiyon çekirdek kütüphaneyi kullanarak formatlama yapacaksak mecburidir. Kendi sentaks genişletmelerinizi de yazabilirsiniz. Rust buna izin verir. Bu genişletmelerin genel adı makrolardır.
                """
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Veri Tipleri")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.red)
                ForEach(text.components(separatedBy: "\n\n"), id: \.self) { paragraph in
                    Text(paragraph)
                        .font(.system(size: 20, weight: .regular))
                        .foregroundColor(.gray)
                        .lineSpacing(10)
                }
                Spacer()
                
            }
            .padding(20)
        }        }
  }


struct CardFour_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView()
        CardFour()

    }
}
