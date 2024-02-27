import SwiftUI

struct Home: View {
    @State private var selectedTab: Tab = .feed
    
    enum Tab {
        case feed, search, gork, notifications, messages
    }
    
    var body: some View {
        VStack {
            ZStack {
                TabView(selection: $selectedTab) {
                    Feed()
                        .tabItem {
                            Image(systemName: selectedTab == .feed ? "house.fill" : "house")
                        }
                        .tag(Tab.feed)
                    
                    SearchView()
                        .tabItem {
                            Image(systemName: selectedTab == .search ? "magnifyingglass" : "magnifyingglass")
                        }
                        .tag(Tab.search)
                    
                    GorkView()
                        .tabItem {
                            Image(systemName: selectedTab == .gork ? "square.stack.3d.up.slash.fill" : "square.stack.3d.up.slash")
                        }
                        .tag(Tab.gork)
                    
                    NotificationsView()
                        .tabItem {
                            Image(systemName: selectedTab == .notifications ? "app.badge.fill" : "app.badge")
                        }
                        .tag(Tab.notifications)
                    
                    MessagesView()
                        .tabItem {
                            Image(systemName: selectedTab == .messages ? "tray.2.fill" : "tray.2")
                        }
                        .tag(Tab.messages)
                }
                .accentColor(Color.bg)
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                        
                                
                                Image(systemName: "goforward.plus")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding()
                                    .background(Color.bg2)
                                    .foregroundStyle(.white)
                                    .clipShape(Circle())
                                
                            
                        })
                    }
                    .padding()
                }
                .padding(.bottom, 65)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
