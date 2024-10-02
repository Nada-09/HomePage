//
//  ContentView.swift
//  HomePage
//
//  Created by Nada Abdullah on 27/03/1446 AH.
//

import SwiftUI

struct ContentView: View {
    
    @State var search: String = ""
    @State var isPresented: Bool = false
    @State var searching: Bool = false
    
    var body: some View {
        NavigationStack {
            //ZStack{
                //Color.black.ignoresSafeArea()
                
                //VStack{
                    VStack{
                        ScrollView{
                            HStack {
                                ReminderStatView(icon: "calendar.badge.clock", title: "Today",count: 0)
                                ReminderStatView(icon: "square.stack", title: "All",count: 0)
                            }
                            HStack{
                                ReminderStatView(icon: "checklist", title: "Doing",count: 0)
                                ReminderStatView(icon: "checkmark", title: "Done",count: 0)
                            }
                            HStack{
                                ReminderStatView(icon: "trash", title: "Deleted",count: 0)
                                ReminderStatView(icon: "plus.rectangle", title: "Add List")
                            }
                            
                            Spacer()
                            
                            HStack{
                                Text("Let’s make today a productive one")
                                    .foregroundColor(Color.red)
                                    .frame(maxWidth: 200,maxHeight: 700, alignment: .bottomLeading)
                                    .font(.title)
                                    .background(.black)
                            }
                            Button{
                                isPresented = true
                            } label: {
                                Text(Image(systemName: "plus.circle.fill"))
                                    .frame(maxWidth: .infinity,alignment: .bottom)
                                    .font(.title)
                                    .controlSize(ControlSize.extraLarge)
                            }.padding()
                        }
                    }
                    .navigationTitle("Zenith")
                    .searchable(text: $search, prompt: "Search")
                    
                }
            }
        }
    //}vstack
//}zstack

#Preview {
    ContentView()
}
