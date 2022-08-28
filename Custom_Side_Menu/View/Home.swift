//
//  Home.swift
//  Custom_Side_Menu
//
//  Created by Koji Kawakami on 2022/07/12.
//

import SwiftUI

struct Home: View {
    @Binding var selectedTab: String
    
    init(selectedTab:Binding<String>){
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
       
        TabView(selection: $selectedTab ){
            
            HomePage()
                .tag("Home")
            
            History()
                .tag("History")
            
            Settings()
                .tag("Setting")
            
            Help()
                .tag("Help")
            
            Notifications()
                .tag("Notifications")
            
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
struct HomePage: View {
    
    var body: some View{
        NavigationView{
            
            VStack(alignment: .leading, spacing: 20){
                Image("pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 50, height: 400)
                    .cornerRadius(20)
                VStack(alignment: .leading, spacing: 5, content: {
                    Text("Ogule Cap")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text("Idol Umamusume")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                })
            }
                .navigationTitle("Home")
        }
    }
}



struct History: View {
    
    var body: some View{
        NavigationView{
            
            Text("History")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("History")
        }
    }
}

struct Notifications: View {
    
    var body: some View{
        NavigationView{
            
            Text("Notifications")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Notifications")
        }
    }
}

struct Settings: View {
    
    var body: some View{
        NavigationView{
            
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Settings")
        }
    }
}

struct Help: View {
    
    var body: some View{
        NavigationView{
            
            Text("Help")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Help")
        }
    }
}
