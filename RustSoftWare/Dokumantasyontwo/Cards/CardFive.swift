//
//  CardFive.swift
//  Dokumantasyontwo
//
//  Created by ubeyt on 29.12.2022.
//

import SwiftUI

struct CardFive: View {
    
    let text = """
                    Koşullu Yapılar:
       If yapısını önceki bölümlerde gözden geçirdik kısa bir örnekle özetleyelim:
       if false {
        io::println("yanlış olan kısım");
       } else if true {
        io::println("doğru yer");
       } else {
        io::println("ne doğru ne yanlış");
       }

    Fakat eğer her blokta değer döndürülme mekanizması şeklinde çalışıyorsa if yapısı tüm blok içlerindeki değerler kesinlikle aynı tipte olmak zorundadır. Örnek olarak:

    fn signum(x: int) -> int {
     if x < 0 { -1 }
     else if x > 0 { 1 }
     else { return 0 }
    }

        Örnek Eşleme

    Rust örnek eşleme mekanizmasını diğer mekanizmalara tercih eder bundan dolayı örnek eşleme mekanizması gelişmiştir. match mekanizması C’deki switch’in bir benzeri olabileceği gibi return durumlarında döndürülecek seçeneklerin belirlenmesini sağlamaktadır.

        match numara {
         0 => io::println("sıfır"),
         1 | 2 => io::println("bir veya iki"),
         3..10 => io::println("3ten 10a kadar"),
         _ => io::println("geri kalan tüm durumlar")
        }

    
    C’deki gibi bir case yapıldıktan sonra kaldığı yerden devam etmez. Bu yapı sabittir ve sadece bir dalı yapar ve işlemini bitirir. ( _ ) wildcard eşlemesi olarak adlandırılan ifadedir ve anlamı “en az bir eşleşme”dir. ( * ) ise “enum tanımlamasında bir veya daha fazla eşleşme” anlamına gelmektedir. Kollar her zaman => işaretiyle tanımlanmasına başlanır.

    match numara {
     0 => { io::println("sıfır") }
     _ => { io::println("başka birşey") }
    }
    numara değeri 0’a eşitse “sıfır” string’ini ekrana bastırırken diğer tüm girdi durumlarında “başka birşey” çıktısını verecektir.

    match tüm kolları arar ve tüm olası durumları koşul üzerinden geçirir.
    match’in en önemli işlevlerinden biri değişken isimleri ile verilerin bağlanabilmesidir. Aşağıdaki örnekte (veri1, veri2) tuple veritipine örnektir.
        fn angle(vector: (float, float)) -> float {
         let pi = float::consts::pi;
         match vector {
         (0f, y) if y < 0f => 1.5 * pi,
         (0f, y) => 0.5 * pi,
         (x, y) => float::atan(y / x)
         }
        }
        
        Değişkenin ismi örnekteki veriyle eşlenmiştir. İlk kolda görülen ve y yazılan yerde bulunan veri kontrol ve manipüle edilebilir. Aynı zamanda üçüncü koldaki (x, y) örneği tamamen örnek eşlemeye yönelik bir tuple’dır. Her match kolu if ile takip ediliyorsa bu if ifadesine örnek bekçisi denir. Örnek bekçisi ifadenin doğruluğunu kontrol ettikten sonra koldaki ifadeyi yapmaya yönelir. İfade ister değer döndürme olsun ister bir fn döndürme tipine bakılarak işlem yapılır, ne olduğuna bakılmaz.
                Döngüler

        Rust’ta döngü yapımı sadece while ile sağlanabilir. Array kavramı vektör olarak yer aldığı için vektör üzerinde iterasyon sadece bekçi içeren ifadeler ile yapılabilir.  For döngüsü Rust için gelecekte planlanan bir özelliktir. While döngüsü yine C’den çok farklı olmamakla birlikte aşağıdaki gibidir:
            let mut cake_amount = 8;
            while cake_amount > 0 {
             cake_amount -= 1;
            }
        Rust’ta while (true) ifadesi için geliştirilmiş özel bir sentaks vardır bu ifade loop ‘tur. Sonsuz döngüyü ifade eder:
        let mut x = 5;
        loop {
         x += x - 3;
         if x % 5 == 0 { break; }
         io::println(int::str(x));
        }
        Bu kod birkaç sayı yazdıktan sonra 5’e bölünebilen bir sayı bulduğunda sonsuz döngüden çıkacak şekilde yazılmıştır.
"""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Kontrol Yapıları")
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
        }
            
        }
}

struct CardFive_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView()
        CardFive()
        

    }
}
