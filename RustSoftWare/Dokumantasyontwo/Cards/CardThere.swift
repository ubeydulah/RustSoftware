//
//  CardThere.swift
//  Dokumantasyontwo
//
//  Created by ubeyt on 29.12.2022.
//

import SwiftUI

struct CardThere: View {
    
    let textTwo = """
    Rust’ta değişkenler başta bahsettiğimiz gibi tip tanımlamasına bağlı şekilde adlandırılıp hafızada yer edinirler. Rust’ta değişkenler iki tiptir mutable(değişebilen) ve immutable(değişmeyen) değişkenler.

            Immutable(Değişmez) Değişkenler:
        Eğer tipini Rust’ın belirlemesini istediğiniz ve değişmez olmasını istediğiniz bir
    değişken varsa tanımlama şu şekildedir:

    let merhaba = "merhabalar"
    Rust’ta değişkenler varsayılan olarak manipüle edilemez haldedir. Nasıl oluyor da değişken
    oluyorlar? sorusunun cevabı ise dilin oluşturulma amacına bir referans niteliğindedir Güvenli thread oluşumu(Thread-safe) özelliği bu yetenekten ileri gelir

            Mutable(Değişen) Değişkenler:

    Tanımlandıklarında C’deki herhangi bir sıradan lokal değişkenden pek farkları yoktur. Şu şekilde tanımlanırlar:
    let mut toplam = 0;
    görüldüğü üzere mut keyword’ü değişkenin mutable olacağını ve değişebilir şekilde yaratılması gerektiğini belirtmekte kullanılır. Mutable değişkenlerin kullanımına bir örnek vermek gerekirse şöyle bir örnek verebiliriz:
    fn main() {
     let mut çevrim = 0;
    while (çevrim <= 10){
    "" io::println("harika");
    "" çevrim+=1;
    }
    }

            Tip Tanımlamaları:

        Tip tanımlamalarında tip ise C’deki gibi başta prefix (önek şeklinde) belirtilmez. Bunun yerine ikinoktadan sonra belirtilir. Örnek olarak;
        let karpuz: float = 57.8;
        let kavun = karpuz * 10.0;
        let karpuz: int = 50;
        io::println(fmt!("%d", monster_size));

        İlk değişken olan karpuz kavun’u oluşturmak için kullanılmıştır. Görevi bittikten sonra yeniden farklı bir tip ile yaratılabilir. Ama bu kodu derlediğimizde bize kavun ve karpuz’u kullanmadığımızı söyleyen bir uyarı gelecektir. Bu bize son karpuzu(integer olarak deklare ettiğimiz) bir işlemde kullanmadığımızı ve immutable olarak oluşturduğumuz kavun’u da bir işleme sokmadığımızı söylemektedir. Bu uyarıdan kurtulmak adına kullanmadığınız değişkenlerin başına “_” koymanız yeterlidir.

        Rust’ta tanımlayıcılar C’deki gibi alfabetik karakter veya alttan çizgi ile başlarlar ve yine C’deki gibi numaralar, alfabetik karakterler ve alttan çizgi kombinasyonları ile devam edebilirler. Rust’ta tanımlayıcı yazım konvansiyonu ilk harfin küçük olması ve gerekli yerlerde(kelimeler arasında vb.) alttan çizgi kullanılması üzerinedir. Örnek olarak:

            let yakışıklı_değişken = 100;
verilebilir. Fakat yeni tip tanımlamaları bu konvansiyonu kullanmaz, bunun yerine camelCasing dediğimiz ilk harfi küçük sonraki her kelimenin ilk harfi büyük olma koşuluna uyarlar, örnek bir yeni tip tanımlaması ise şu şekildedir:

    type yeniBirTipTanımlaması = int;

Rust’ta kod yazarken Türkçe karakter kullanabilirsiniz. Bu size taşınabilirlikte
de kullanılabilirlikte de sorun çıkarmaz.


        İFADE Yapısı/Sentaks:

        Rust kendisi değer döndürebilen ve değeri yerleştirebilen bir yapıya sahiptir. Bu yapı tanımlayıcıların tekrar tekrar kullanılmasını önlemekle beraber return keyword’ünde bile blok yazmamızı da sağlamaktadır. Şimdi C’deki bir yapıyı Rust’ta gösterelim.

        let şeker;
        if item == "reçel" {
         şeker = 3.50;
        } else if item == "kek" {
        şeker = 2.25;
        } else {
        şeker = 2.00;
        }


        Bu stil C’deki tanımlamanın birebir uyarlamasıdır. Bunun yerine biz Rust’ta bu yapıyı yazmak istesek daha güzel ve mantıksal bir yol izleyerek;

        let şeker =
         if item == "reçel" {
         3.50
         } else if item == "kek" {
         2.25
         } else {
         2.00
         };

    bu şekilde tanımlayacaktık. Bu bize sadece atamayı değil aynı zamanda içeride sonucu oluşturabilecek bir fonksiyonu da kullanabilmemizi sağlıyor. Dikkat ettiyseniz 2. örnekte noktalıvirgül sözkonusu değildir son bloktaki noktalı virgül tüm blok zincirinin başlıbaşına bir kod olarak çalıştırılmasını tetikler, bu bize esneklikte sağlar aynı zamanda örnek olarak 3.50 değeri yerine 3.50 değerini oluşturan bir fonksiyonun varolabilmesi hatta bu fonksiyonun diğer durumlara da bağlı olabilen tek parametreli bir fonksiyon da olabilmesi gibi. Rust işte bu şekilde bizim yapabileceklerimizi esneterek ve kısaltarak kolaylık sağlamaktadır. Aynı zamanda Rust işlemci üzerindeki boş işlemci vaktini paralel threadler çalıştırarak minimize etmektedir.

    Yukarıdaki örnekte 3.50, 2.25 ve 2.00 olarak değer atadığımız satırlar eğer “;”
    ile kullanılsalardı, ifade mekanizması çalışmayacaktı. Bunun nedeni bahsettiğimiz
    bloklamadır. Böyle bir atama yine de çalışır fakat atanma değişkene döndürülüyorsa nil fonksiyona döndürülüyorsa void olur. Bu da istediğimiz sonucu vermez.

    Değişkenler için let, fonksiyonlar için fn , trait tanımlamaları, enumlar ve constantlar harici dil dahilinde kalan herşey ifade kapsamına girmektedir.
    Rust’ta ifade olması için fonksiyon içeriği olmak bile yeterlidir. Örneğin;

    fn dört_döndür(x: int) -> bool {
     x==4
    }
    return ifadesine gerek duyulmadan alınan değer return değeri amacıyla kullanılacaktır.
    Eğer satırlar atama, binary veya unary operasyonlar için kullanılmıyor ve fonksiyonlar kullanılıyorsa;

        let x = foo();
        if x {
         bar();
        } else {
         baz();
        }

    Bu şekilde fonksiyon sonrası “;” ifadesi kullanılarak yazılırlar. Burada önemli olan şu noktadır: eğer biz bu fonksiyonlardan bir değer döndürmüyorsak ve fonksiyonlarımız C’deki void fonksiyonlar gibi ise(ki bu Rust’ta nil-type’a karşılık gelir) her ifade çevriminin sonuna yukarıda belirttiğimiz gibi bir “;” konulur.

    Bu durumlar “;”ün konulduğu durumlardır. Konulmadığı durumların genel özelliği ise kesin bir değer döndürüp bu değer’in nil’den farklı olduğu durumlar olmaktadır. İşte buna bir örnek ise:

        fn bar() -> int {
        let a = 9;
        return a;
        }
         
        fn baz() -> int {
        return 10;
        }
        fn main() {
        let x = false;
        io::println(fmt!("Cevap %d",
        if x {
        bar()
        } else {
        baz()
        }));
        }

        Görüldüğü üzere bar() ve baz() değer döndürdükleri için “;” koymuyoruz hatta blok sonuna da koymamamızın nedeni println()’in onu hesaplama girişiminde bulunacağıdır.
"""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Değişkenler")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.red)
                ForEach(textTwo.components(separatedBy: "\n\n"), id: \.self) { paragraph in
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

struct CardThere_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView()
        CardThere()

    }
}
