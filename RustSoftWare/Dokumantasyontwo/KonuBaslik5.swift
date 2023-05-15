//
//  KonuBaslik5.swift
//  Dokumantasyontwo
//
//  Created by ubeyt on 15.01.2023.
//

import SwiftUI

struct KonuBaslik5: View {
    var body: some View {
        VStack{
            NavigationLink(destination: KonuBaslik5()){
           Text("Windows & Linux")
            //.underline()
            .font(.headline)
            .padding(30)
            //.frame(width: 190, height: 190)
            
            .cornerRadius(10)
                
                
            }
          
      
        ScrollView(.vertical){
            Text("Eğer Windows kullanıyorsanız sisteminize sırasıyla MinGW ve MSYS paketi (versiyon numarası 20110802 olmak üzere) MsysGit (Kurduktan sonra MinGW kurulum dizinindeki .bashrc dosyasına aşağıdaki satırı ekleyin export PATH=$PATH:/c/Programfiles/Git/bin ve kaydedin. libpthread kütüphanesini kurun versiyon numarası 2.8.0-3 (libpthread-2.8.0-3-mingw32-dll-2.tar.lzma) tüm bu yazılımları sisteminize kurduktan sonra http://www.rust-lang.org/ adresindeki yükleyici’yi indirmelisiniz. Bu paket hazır derlenmiş ve kullanıma hazır win32 çalıştırılabilirlerini ve kütüphanelerini içermektedir. Kurulum sırasında PATH ortam değişkenine Rust’ı ekle seçeneğinin işaretli olduğundan emin olun.Kurulum tamamlandığında artık Rust’ı kullanabilir durumda olacaksınız. NIX türevleri ve Linux Eğer NIX türevi (buna MacOS’da dahil olmak üzere) veya Linux dağıtımlarından birini kullanıyorsanız g++ 4.4 veya clang++ 3.x serisi python 2.6 veya sonraki bir sürüm (fakat 3.x serisi olmamak kaydı ile) perl 5.0 veya daha sonraki bir sürüm gnu make 3.81 veya daha sonraki bir sürüm curlyazılımlarının sisteminizde yüklü olduğundan emin olun. Tüm bu gereksinimlerden emin olduktan sonra Rust’ı derlemek şu şekildedir:  wget http://dl.rust-lang.org/dist/rust-0.4.tar.gz tar -xzf rust-0.4.tar.gz  cd rust-0.4 ./configure  make && make install Benim yazdığım zamanda Rust derleyicisinin versiyonu 0.4’tü, şimdi yenilenmiş olabilir güncel kaynak kodu yine Rust’ın kendi sitesinde bulabilirsiniz. NIX türevleri ve Linux NIX türevi (buna MacOS’da dahil olmak üzere) veya Linux dağıtımlarından birini kullanıyorsanız g++ 4.4 veya clang++ 3.x serisi python 2.6 veya sonraki bir sürüm (fakat 3.x serisi olmamak kaydı ile) perl 5.0 veya daha sonraki bir sürüm gnu make 3.81 veya daha sonraki bir sürüm curl yazılımlarının sisteminizde yüklü olduğundan emin olun. Tüm bu gereksinimlerden emin olduktan sonra Rust’ı derlemek şu şekildedir: wget http://dl.rust-lang.org/dist/rust-0.4.tar.gz  tar -xzf rust-0.4.tar.gz cd rust-0.4 ./configure  make && make install Benim yazdığım zamanda Rust derleyicisinin versiyonu 0.4’tü, şimdi yenilenmiş olabilir güncel kaynak kodu yine Rust’ın kendi sitesinde bulabilirsiniz. ")
            
                .font(.system(size: 19,weight: .medium))
                .padding(10)
                //.frame(width: 190, height: 190)
                .background(Color.orange)
                .foregroundColor(Color.white)
                .cornerRadius(20)
                .font(.headline)
             }
            
            
            HStack{
            NavigationLink(destination: KonuBaslik4()){
           Text("<<Önceki Sayfa")
            .underline()
            .font(.headline)
            .padding()
            //.frame(width: 190, height: 190)
            
            .cornerRadius(10)
                
                
            }
                
                NavigationLink(destination: KonuBaslik6()){
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

struct KonuBaslik5_Previews: PreviewProvider {
    static var previews: some View {
        KonuBaslik5()
    }
}
