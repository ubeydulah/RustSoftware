//
//  CardTwo.swift
//  Dokumantasyontwo
//
//  Created by ubeyt on 29.12.2022.
//

import SwiftUI

struct CardTwo: View {
    
    let text = """
        Parçalar ve İnşaa Sistemi Önbilgisi Kurulum üç çalıştırılabilir ve kütüphanelerden oluşmaktadır. Bunlar:
    
        • rustc (Rust Derleyicisi)
        • rustdoc (Rust Dokümantasyon Oluşturucu)
        • cargo (Rust Paket Yöneticisi)
        • librustllvm, librustrt, libcore, libstd, librustc, libsyntax ve libmorestack
    kütüphaneleri (sistem oluşturulurken kullanılan diğer kütüphaneler önceden
    yazılmış açık kaynak kütüphanelerdir)
        
    İnşaa sistemi 3 fazdan oluşmaktadır her bir derleyici fazı kendinden sonraki derleyici fazını yapacak şekilde düzenlenmiştir. Faz.3 derleyicisi son derleyiciyi
    yaptığında(kendini) Faz.2 ile birebir aynı bir imaj oluşturur(kendini yapan ile).
    Bütün bu işlemlere ön-ayak olan ise bir önceki rust derleyicisi versiyonun son derleyicisidir. Bu derleyici yeni sistemin Faz.0‘ıdır.
    
    
    
            İşletim Sistemine Kurulum (-Windows-)
    
    
            Eğer Windows kullanıyorsanız sisteminize sırasıyla
    • MinGW ve MSYS paketi (versiyon numarası 20110802 olmak üzere)
    • MsysGit (Kurduktan sonra MinGW kurulum dizinindeki .bashrc dosyasına aşağıdaki satırı ekleyin
        
        export PATH=$PATH:/c/Program/Files/Git/bin ve kaydedin.
    • libpthread kütüphanesini kurun versiyon numarası 2.8.0-3
    (libpthread-2.8.0-3-mingw32-dll-2.tar.lzma)
    tüm bu yazılımları sisteminize kurduktan sonra http://www.rust-lang.org/ adresindeki yükleyici’yi indirmelisiniz. Bu paket hazır derlenmiş ve kullanıma hazır
    win32 çalıştırılabilirlerini ve kütüphanelerini içermektedir. Kurulum sırasında
    PATH ortam değişkenine Rust’ı ekle seçeneğinin işaretli olduğundan emin olun.
    Kurulum tamamlandığında artık Rust’ı kullanabilir durumda olacaksınız.
    
    
        •*NIX türevleri ve Linux
    
    
    Eğer *NIX türevi (buna MacOS’da dahil olmak üzere) veya Linux dağıtımlarından birini kullanıyorsanız
    • g++ 4.4 veya clang++ 3.x serisi
    • python 2.6 veya sonraki bir sürüm (fakat 3.x serisi olmamak kaydı ile)
    • perl 5.0 veya daha sonraki bir sürüm
    • gnu make 3.81 veya daha sonraki bir sürüm
    • curl
    yazılımlarının sisteminizde yüklü olduğundan emin olun. Tüm bu gereksinimlerden emin olduktan sonra Rust’ı derlemek şu şekildedir:
    $ wget http://dl.rust-lang.org/dist/rust-0.4.tar.gz
    $ tar -xzf rust-0.4.tar.gz
    $ cd rust-0.4
    $ ./configure
    $ make && make install
    Benim yazdığım zamanda Rust derleyicisinin versiyonu 0.4’tü, şimdi yenilenmiş
    olabilir güncel kaynak kodu yine Rust’ın kendi sitesinde bulabilirsiniz.
    
    
    
        Editör ve Geliştirme Ortamları
    
    Rust kodu yazabilmek için çeşitli editörler ve destekler mevcuttur. Bunlara örnek vermek gerekirse Eclipse geliştirme ortamı, TextMate editörü, Vim ve Emacs
    editörleri verilebilir.
    
    • TextMate için destek paketi: Rust.tmbundle
    • Eclipse plugin desteği: Oxide
    • Emacs ve Vim için destek ise rust’ın kendi kaynak kodunda src/etc dizini
    altında bulunmaktadır.
    • Sublime Text 2 için Sublime Package Manager yoluyla Rust desteği yüklenebilir.
    • KDE’nin editörü Kate için ise yine kaynak kodun src/etc/kate dizini altında
    desteğini bulabilirsiniz.
    Rust daha çok yeni bir dil olduğundan dolayı tam anlamıyla bağımsız bir IDE
    geliştirilmedi. Şimdilik elimizdeki editör ve destek miktarının bu kadar olduğunu
    belirtmekle yetinelim. Geliştirmeler oldukça kitabın yeni revizyonlarında bunları belirteceğim.
    """
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("KURULUM")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.red)
                ForEach(text.components(separatedBy: "\n\n"), id: \.self) { paragraph in
                    Text(paragraph)
                        .font(.system(size: 20, weight: .regular))
                        .foregroundColor(.gray)
                        .lineSpacing(10)
                }
                Spacer()
                NavigationLink(destination: cardsOne()) {
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


struct cardsOne: View {
    let textOne = """
           Rust genel olarak veri yapılarında C’den farklı değildir, tiplerin tamamı C’nin birebir kopyasıdır fakat bazı tipler üzerinde fazlaca çalışılmış ayrıca başka tiplerde ekleme yapılmıştır, Rust’ı anlatırken çoğu zaman C ile karşılaştıracağız. Rust programları .rs dosya uzantısını kullanırlar, .rc uzantısı ise Crate denilen bağımsız  derleme birimlerinin özelliklerini belirten dosyalardır. Şimdilik bunlara değinmeden sadece bir dosyadan oluşan çalıştırılabilirleri anlatacağız.
           İlk programımız klasik bir Merhaba Dünya olup helloworld.rs isimli bir dosya açarak:
          fn main() {
            io::println("Merhaba Dünya! Rust’a hoşgeldin!"); } metnini kaydediyoruz. Rust derleyicisini sisteminize başarı ile yüklediyseniz rustc helloworld.rs komutunu verdiğinizde size eğer *nix sistem üzerinde iseniz helloworld isimli bir çalıştırılabilir oluşturulacaktır(eğer windows üzerinde iseniz bu çalıştırılabilirin adı helloworld.exe olur). Çalıştırdığınızda ise
            Merhaba Dünya! Rust’a hoşgeldin! çıktısını alırsınız.
         Rust eğer çalıştırılabilir oluşturulacaksa C’deki gibi bir main fonksiyonuna ihtiyaç duyar, aynı zamanda eğer kütüphanelerinde bulunmayan bir fonksiyonla karşılaşırsa hata mesajını en dar şekilde vererek deterministik bir hata çıktısı verir. Şimdi kodumuzu biraz değiştirerek şu hale getirelim
            fn main() {
             io::bu_satırı_bas("Merhaba Dünya! Rust’a
            hoşgeldin!");
            }  derleyip çalıştırdığımızda ise karşımıza şu mesaj çıkacaktır
            helloworld.rs:2:4: 2:21 error: unresolved name: io::bu_satırı_bas
            helloworld.rs:2 io::bu_satırı_bas("Merhaba Dünya! Rust’a hoşgeldin!");
             "" ^~~~~~~~~~~~~~~~~ error: aborting due to previous error Bu hatanın sebebi ise bu_satırı_bas isimli bir fonksiyonun olmamasıdır


"""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("İlk Adımlar")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.red)
                ForEach(textOne.components(separatedBy: "\n\n"), id: \.self) { paragraph in
                    Text(paragraph)
                        .font(.system(size: 20, weight: .regular))
                        .foregroundColor(.gray)
                        .lineSpacing(10)
                }
             
            }
            .padding(20)
        }
    }
    
}


struct CardTwo_Previews: PreviewProvider {
    static var previews: some View {
       // ContentView()
        CardTwo()
        cardsOne()
        
    }
}
