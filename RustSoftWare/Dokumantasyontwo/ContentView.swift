//
//  ContentView.swift
//  Dokumantasyontwo
//
//  Created by ubeyt on 21.12.2022.
//

import SwiftUI




struct ContentView: View {
    
    var body: some View {
        
     
        NavigationView{
        VStack{
           
            Image(systemName: "gearshape")
                .font(.system(size: 34))
                .frame(width: 32, height: 32)
                .padding(.trailing, 0)
                .foregroundColor(.gray)
            Text("Rust Öğrenmek")
                .font(.system(size: 32, weight: .bold))
                .padding(.bottom, 8)
            
            

            HStack {
                
                Image(systemName: "gearshape")
                    .font(.system(size: 24))
                    .frame(width: 32, height: 32)
                    .padding(.trailing, 8)
                    .foregroundColor(.gray)
                Text("Rust'a Genel Bakış")
                    .font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 8)
                
                Spacer()
                NavigationLink(destination: CardOne()) {
                Image(systemName: "chevron.right")
                .font(.system(size: 17))
                .frame(width: 32, height: 32)
                .foregroundColor(.gray)
                }
                
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
            //.background(Color.white.opacity(0.2))
            .multilineTextAlignment(.center)
            .padding(.bottom, 30)
            
            HStack {
                Image(systemName: "gearshape")
                    .font(.system(size: 24))
                    .frame(width: 32, height: 32)
                    .padding(.trailing, 8)
                    .foregroundColor(.gray)
                Text("Rust’ın Temelleri")
                    .font(.system(size: 24, weight: .bold))
                    .padding(.trailing, 8)
                Spacer()
                NavigationLink(destination: CardTwo()) {
                Image(systemName: "chevron.right")
                .font(.system(size: 17))
                .frame(width: 32, height: 32)
                .foregroundColor(.gray)
                }
                
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
           // .background(Color.white.opacity(0.2))
            .multilineTextAlignment(.center)
            .padding(.bottom, 30)

            
            
            
            
            HStack {
                Image(systemName: "gearshape")
                    .font(.system(size: 24))
                    .frame(width: 32, height: 32)
                    .padding(.trailing, 8)
                    .foregroundColor(.gray)

                Text("Değişkenler")
                    .font(.system(size: 24, weight: .bold))
                    .padding(.trailing, 8)
                Spacer()
                NavigationLink(destination: CardThere()) {
                Image(systemName: "chevron.right")
                .font(.system(size: 17))
                .frame(width: 32, height: 32)
                .foregroundColor(.gray)
                }
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
           // .background(Color.white.opacity(0.2))
            .multilineTextAlignment(.center)
            .padding(.bottom, 30)

            
            HStack {
                Image(systemName: "gearshape")
                    .font(.system(size: 24))
                    .frame(width: 32, height: 32)
                    .padding(.trailing, 8)
                    .foregroundColor(.gray)

                Text("Veri Tipleri")
                    .font(.system(size: 24, weight: .bold))
                    .padding(.trailing, 8)
                Spacer()
                NavigationLink(destination: CardFour()) {
                Image(systemName: "chevron.right")
                .font(.system(size: 17))
                .frame(width: 32, height: 32)
                .foregroundColor(.gray)
                }
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
           // .background(Color.white.opacity(0.2))
            .multilineTextAlignment(.center)
            .padding(.bottom, 30)

            
            HStack {
                Image(systemName: "gearshape")
                    .font(.system(size: 24))
                    .frame(width: 32, height: 32)
                    .padding(.trailing, 8)
                    .foregroundColor(.gray)

                Text("Program Akışı")
                    .font(.system(size: 24, weight: .bold))
                    .padding(.trailing, 8)
                Spacer()
                NavigationLink(destination: CardFive()) {
                Image(systemName: "chevron.right")
                .font(.system(size: 17))
                .frame(width: 32, height: 32)
                .foregroundColor(.gray)
                }
                
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
          //  .background(Color.white.opacity(0.2))
            .multilineTextAlignment(.center)
            .padding(.bottom, 30)

            
            
            HStack {
            Image(systemName: "gearshape")
            .font(.system(size: 24))
            .frame(width: 32, height: 32)
            .padding(.trailing, 8)
            .foregroundColor(.gray)
              Text("Veri Yapıları")
            .font(.system(size: 24, weight: .bold))
            .padding(.trailing, 8)
            Spacer()
                               
            NavigationLink(destination: CardSix()) {
            Image(systemName: "chevron.right")
            .font(.system(size: 17))
            .frame(width: 32, height: 32)
            .foregroundColor(.gray)
            }
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
      //  .background(Color.white.opacity(0.2))
         .multilineTextAlignment(.center)
        .padding(.bottom, 30)

            
            
            HStack {
                Image(systemName: "gearshape")
                    .font(.system(size: 24))
                    .frame(width: 32, height: 32)
                    .padding(.trailing, 8)
                    .foregroundColor(.gray)

                Text("Rust Test")
                    .font(.system(size: 24, weight: .bold))
                    .padding(.trailing, 8)
                Spacer()
                NavigationLink(destination: CardSeven()) {
                Image(systemName: "chevron.right")
                .font(.system(size: 17))
                .frame(width: 32, height: 32)
                .foregroundColor(.gray)
                }
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
            //.background(Color.white.opacity(0.2))
            .multilineTextAlignment(.center)



        }
    }

   }
}







struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
     ContentView()
  }
}
