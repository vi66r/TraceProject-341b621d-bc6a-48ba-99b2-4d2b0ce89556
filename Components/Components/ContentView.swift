import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                FeedView()
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            Text("New Post")
                .tabItem {
                    Image(systemName: "plus.square")
                    Text("New Post")
                }
            
            Text("Activity")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Activity")
                }
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

struct FeedView: View {
    var body: some View {
        List {
            ForEach(0..<10) { _ in
                PostView()
            }
        }
        .navigationBarTitle("Instagram", displayMode: .inline)
    }
}

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 40, height: 40)
                Text("Username")
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
            
            HStack(spacing: 16) {
                Image(systemName: "heart")
                Image(systemName: "bubble.right")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .padding(.horizontal)
            .font(.system(size: 24))
            
            Text("100 likes")
                .padding(.horizontal)
            
            HStack {
                Text("Username")
                    .bold()
                Text("Caption")
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}