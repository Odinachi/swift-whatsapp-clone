//
//  ContentView.swift
//  sample
//
//  Created by  Apple on 07/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State var value = ""
    var body: some View {
        
        
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(alignment: .leading,content:{
                
                HStack{
                    
                    EditButton()
                    
                    Spacer()
                    Image(systemName: "camera")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    
                    
                    
                    
                    
                    
                    Image(systemName: "square.and.pencil")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    
                }.padding()
                
                Text("Chat").foregroundColor(.white).font(.title).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
         
                HStack{
                        
                        Image(systemName: "magnifyingglass").foregroundColor(.gray)
                        TextField("Search", text: $value, prompt: Text("Search").foregroundStyle(.gray)).foregroundColor(.white)}.frame(height: 10).padding()
                        .background(RoundedRectangle(cornerRadius:  10).fill(Color.gray.opacity(0.3)))
            
                HStack{
                    Button("Broadcast List", action:{})
                    Spacer()
                    Button("New Group", action:{})
                }.padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 10))
                
                StaffList()
                 
                Spacer()
            }).padding()
        }
        
        
        
    }
    
    
}

#Preview {
    ContentView()
}

struct StaffList: View {
    var body: some View {
        List {
            
            ForEach(messages) { msg in
                HStack{
                    Image(systemName: "person.circle.fill").font(.largeTitle).foregroundColor(.gray)
                    
                    
                    VStack(alignment: .listRowSeparatorLeading,content:{
                        Text(msg.name).foregroundColor(.white).fontWeight(.heavy)
                        Text(msg.message).foregroundColor(.gray).font(.subheadline)
                    })
                    
                }.listRowBackground(Color.black).padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 0))
            }.listRowInsets(EdgeInsets())
        }.listStyle(PlainListStyle())
    }
}
struct Message: Identifiable {
     let id = UUID()
     var name: String
     var message: String
 }


var messages = [
    Message(name: "Juan Chavez",message:  "Hello sir"),
    Message(name: "Mei Chen", message: "My friend") ,
    Message(name: "Isaac Hoeman",message:  "Sounds great"),
    Message(name: "Patrick Kin", message: "done!!! you can check now") ,
    Message(name: "Ayarr Akin",message:  "Swaers.. she set die!!!"),
    Message(name: "Chuma Doh", message: "that's true, I thought same") ,
]
