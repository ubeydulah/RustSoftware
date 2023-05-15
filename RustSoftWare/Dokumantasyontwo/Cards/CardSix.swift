//
//  CardSix.swift
//  Dokumantasyontwo
//
//  Created by ubeyt on 29.12.2022.
//

import SwiftUI

struct CardSix: View {
    
    let text = """
    
            İlk olarak struct yapısıyla başlayabiliriz. Struct yapısı C’dekine benzer bir yapı sergilemektedir hatta hafızada tutulma şekilleri aynıdır. Kullanımı C’deki kullanım şekliyle aynıdır.
            struct Stack {
             content: ~[int],
             mut head: uint
            }
            Yıkıcı sentaks bir değeri yerine tanımlanmış başka bir değişkenle manipüle etmektir. Daha önce de bahsettiğimiz yıkıcı yapı structlar için de kullanılabilir. Örneğin;
            match Noktam {
             Nokta { x: 0.0, y: yy } => {
            io::println(yy.to_str());}
             Nokta { x: xx, y: yy } => {
            io::println(xx.to_str() + " " + yy.to_str()); }}
    
            Enumeration
                Enumlar birden fazla şekilde gösterilebilirler. En basit gösterimlerinden biri;
                enum Şekil {
                 Daire(Point, float),
                 Dikdörtgen(Point, Point)
                }
                şeklindedir. Argüman olarak atama yapılabildiği gibi sıradan C enumları gibi kendi içlerinde büyükten küçüğe indeks sıralaması yapan enumlar da vardır. Örnek olarak:
                enum Yön {
                 Kuzey,
                 Güney,
                 Doğu,
                 Batı
                }
                Kuzey 0, Güney 1, Doğu 2 ve Batı 3 değerini almaktadır. Fakat diğer atamalı enumlarda bu tanımlama geçerli olmayıp her belirtme atamaya göre yapılır.  Dereferans(deref) işlemi de bir unary operatör olup enumlar üzerinde içerisindeki değeri almalarını sağlamaktadır.
                enum Ses { Ses (int) }
                let ses_seviyesi: Ses = Ses(10);
                let anlık_ses_seviyesi: int = *ses_seviyesi;
                Başka bir içerikten bilgi alınması bu şekilde sağlanabilir.Enumlar aynı zamanda örnek eşlemede de kullanılabilirler:
                fn bu_noktadan_tarif(dir: Yön) -> Nokta {
                 match dir {
                 Kuzey => Point {x: 0f, y: 1f},
                 Doğu => Point {x: 1f, y: 0f},
                 Güney => Point {x: 0f, y: -1f},
                 Batı => Point {x: -1f, y: 0f}
                 }
                }
                Tuple
                Rust’ta tuplelar enumlar gibi çalışır dakat enumlar gibi alanadları yoktur. Argümanlaştırma işlemi yapılır fakat bu işlemde 0 veya 1 argüman olarak verilemez. Enumda bu yapılırken tuple da bu yapılamaz. Örnek bir tuple ise şu şekildedir:
                let mytup: (int, int, float) = (10, 20, 30.0);
                match mytup {
                 (a, b, c) => log(info, a + b + (c as int))
                }
                Rust’a dair 0.4 versiyonuyla kesinleşmiş ve temele oturmuş özellikler ve yapılar bunlardır. Traitler, yeni döngüler, REPL(read evaluate print loop), Exception mekanizması gibi özellikler yeni yeni geliştirilmektedir. Ayrıca fonksiyonların saflığı ve saf olmamaları ve bu saflık yapısının nasıl olması gerektiği hakkında hala bir takım belirlenmemiş kısımlar vardır.
    """
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                Text("Struct")
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

struct CardSix_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView()
        CardSix()
       
    }
}
