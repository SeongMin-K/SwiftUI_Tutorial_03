//
//  MyPopupView.swift
//  SwiftUI_Tutorial_03
//
//  Created by SeongMinK on 2021/12/02.
//

import SwiftUI
import PopupView

struct MyPopupView: View {
    @State var showBottomSolid = false
    @State var showBottomToast = false
    @State var showTopSolid = false
    @State var showTopToast = false
    @State var showPopup = false
    
    func createBottomSolidMessage() -> some View {
        HStack(spacing: 10) {
            Image(systemName: "book.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            VStack(alignment: .leading, spacing: 5) {
                Text("안내 메시지")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                Text("토스트 메시지입니다! Message Message Message Message Message Message Message Message")
                    .lineLimit(2)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
                Divider().opacity(0)
            }
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 10)
        .background(Color.purple)
    }
    
    func createBottomToastMessage() -> some View {
        HStack(spacing: 10) {
            Image("Cat")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .frame(width: 60, height: 60)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 5) {
                Text("내가 그린 고양이")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                Text("플로터 메시지입니다! Message Message Message Message Message Message Message Message")
                    .lineLimit(3)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
                Divider().opacity(0)
            }
        }
        .padding(10)
        .frame(width: 300)
        .background(Color.blue)
        .cornerRadius(20)
    }
    
    func createTopSolidMessage() -> some View {
        HStack(spacing: 10) {
            Image("Shark")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .frame(width: 60, height: 60)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 5) {
                Text("SeongMin-K")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                Text("iOS Developer SeongMin-K\ngithub.com/seongmin-k")
                    .lineLimit(2)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
                Divider().opacity(0)
            }
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 20 : 35)
        .background(Color.green)
    }
    
    func createTopToastMessage() -> some View {
        HStack(spacing: 5) {
            Image(systemName: "paperplane.fill")
                .font(.system(size: 30))
                .padding(.leading, 5)
                .foregroundColor(Color.white)
            VStack(alignment: .leading, spacing: 2) {
                Text("종이비행기")
                    .fontWeight(.black)
                    .padding(.horizontal, 5)
                    .foregroundColor(Color.white)
                Text("즐거운 종이접기 시간! 오늘은 비행기를 만들어보자!")
                    .lineLimit(1)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
            }
            .padding(.trailing, 10)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .background(Color.yellow)
        .cornerRadius(20)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 30)
    }
    
    func createPopup() -> some View {
        VStack(spacing: 10) {
            Image("Shark")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .cornerRadius(10)
            Text("Kings_a_man")
                .foregroundColor(Color.white)
                .bold()
            Text("대한민국에서 개발자로 취업하기!\n저는 Swift를 공부하고 있는 취업준비생입니다.\n\n오늘도 좋은 하루 되세요! 🙌🏼")
                .font(.system(size: 13))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
            Button(action: {
                self.showPopup = false
            }) {
                Text("Close")
                    .font(.system(size: 15))
                    .foregroundColor(Color.black)
                    .bold()
            }
            .frame(width: 100, height: 40)
            .background(Color.white)
            .cornerRadius(20)
            .padding(.vertical, 15)
        }
        .frame(width: 300, height: 300)
        .background(Color.green)
        .cornerRadius(20)
        .shadow(radius: 10)
    }

    var body: some View {
        ZStack {
            VStack(spacing: 15) {
                Button(action: {
                    self.showBottomSolid = true
                }, label: {
                    Text("BottomSolid Message")
                        .font(.system(size: 20))
                        .bold()
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.purple)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.showBottomToast = true
                }, label: {
                    Text("BottomToast Message")
                        .font(.system(size: 20))
                        .bold()
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.showTopSolid = true
                }, label: {
                    Text("TopSolid Message")
                        .font(.system(size: 20))
                        .bold()
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.showTopToast = true
                }, label: {
                    Text("TopToast Message")
                        .font(.system(size: 20))
                        .bold()
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.yellow)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.showPopup = true
                }, label: {
                    Text("Popup")
                        .font(.system(size: 20))
                        .bold()
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.red)
                        .cornerRadius(10)
                })
            }
        }
        .edgesIgnoringSafeArea(.all)
        .popup(isPresented: $showBottomSolid, type: .toast, position: .bottom, animation: .easeInOut, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            self.createBottomSolidMessage()
        })
        .popup(isPresented: $showBottomToast, type: .floater(verticalPadding: 20), position: .bottom, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            self.createBottomToastMessage()
        })
        .popup(isPresented: $showTopSolid, type: .toast, position: .top, animation: .easeInOut, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            self.createTopSolidMessage()
        })
        .popup(isPresented: $showTopToast, type: .floater(verticalPadding: 20), position: .top, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            self.createTopToastMessage()
        })
        .popup(isPresented: $showPopup, position: .bottom, animation: .spring(), closeOnTap: false, closeOnTapOutside: false, view: {
            self.createPopup()
        })
    }
}

struct MyPopupView_Previews: PreviewProvider {
    static var previews: some View {
        MyPopupView()
    }
}
