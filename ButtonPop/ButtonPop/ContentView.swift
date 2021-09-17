//
//  ContentView.swift
//  ButtonPop
//
//  Created by Shreyas Vilaschandra Bhike on 17/09/21.
//MARK:- The App Wizard
// Instagram :
//MARK:- theappwizard2408

import SwiftUI



struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
           HomeView()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


























let gradient =
   LinearGradient(gradient:  Gradient(colors: [Color("gr1"), Color("gr2"),Color("gr3")]), startPoint: .leading, endPoint: .topTrailing)


let gradient2 =
  LinearGradient(gradient:  Gradient(colors: [Color("basecol"), Color("basecol"),Color("basecol")]), startPoint: .leading, endPoint: .topTrailing)
  
struct HomeView: View {
    
    @State private var showpop = false
    
    var body: some View {
        ZStack{
            
            
               ZStack {
                  Button(action: {
                    self.showpop.toggle()
                  }){
                    BaseButton()
                    
                   }
                
                    if showpop {
                         PopButton()
                       }
                   }
            
            
            
        }
    }
}




struct BaseButton: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 65)
                .fill(gradient2)
                .frame(width: 300, height: 120, alignment: .center)
            
            Image("ptit")
                .resizable()
                .frame(width: 180, height: 78, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: 4, y: 0)
            
            
        }
    }
}


struct PopButton: View {
    @State var gradients = false
    @State var title  = false
    @State var element1  = false
    @State var element2 = false
    @State var element3 = false
    @State var element4 = false
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 65)
                .fill(gradient)
                .frame(width: 300, height: 120, alignment: .center)
                //.foregroundColor(Color("button"))
              
            
            RoundedRectangle(cornerRadius: 65)
                .fill(gradient2)
                .frame(width: 300, height: 120, alignment: .center)
                .opacity(gradients ? 0 : 1)
                .animation(Animation.easeInOut(duration: 1).repeatCount(1))
                    .onAppear() {
                        self.gradients.toggle()
                }
            
            
         
            
            

            
//MARK:-     Elements
            
            //Circle
            Image("e1")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(color: .black, radius: 0.5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                .scaleEffect(element1 ? 1.4 : 0.2)
                .offset(x: element1 ? 90 : 0, y: element1 ? 65 : 0)
                .animation(Animation.easeInOut(duration: 1).repeatCount(1))
                    .onAppear() {
                        self.element1.toggle()
                }
            
            //Triangle
            Image("e2")
                .resizable()
                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: .black, radius: 0.5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                .scaleEffect(element2 ? 1.4 : 0.2)
                .offset(x: element1 ? -85 : 0, y: element1 ? -65 : 0)
                .animation(Animation.easeInOut(duration: 1).repeatCount(1))
                    .onAppear() {
                        self.element2.toggle()
                }
            
            //Semi-Circle
            Image("e3")
                .resizable()
                .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: .black, radius: 0.5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                .scaleEffect(element3 ? 1.4 : 0.2)
                .rotationEffect(.degrees(90))
                .offset(x: element1 ? -80 : 0, y: element1 ? 65 : 0)
                .animation(Animation.easeInOut(duration: 1).repeatCount(1))
                    .onAppear() {
                        self.element3.toggle()
                }
            
            //cube
            Image("e4")
                .resizable()
                .frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: .black, radius: 0.5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                .scaleEffect(element4 ? 1.4 : 0.2)
                .offset(x: element1 ? 92 : 0, y: element1 ? -65 : 0)
                .animation(Animation.easeInOut(duration: 1).repeatCount(1))
                    .onAppear() {
                        self.element4.toggle()
                }
            
          
            
            //MARK:-     Title
                        
                        Image("ptit")
                            .resizable()
                            .frame(width: 180, height: 78, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .scaleEffect(title ? 1.4 : 1)
                            .offset(x: 4, y: 0)
                            .shadow(color: .black, radius: 0.5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            .animation(Animation.easeInOut(duration: 1).repeatCount(1))
                                .onAppear() {
                                    self.title.toggle()
                            }
                        
            
            
        }
    }
}
