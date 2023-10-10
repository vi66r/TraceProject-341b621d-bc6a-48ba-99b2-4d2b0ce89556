import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                HomeView()
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            NavigationView {
                SearchView()
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
            
            NavigationView {
                TripsView()
            }
            .tabItem {
                Image(systemName: "airplane")
                Text("Trips")
            }
            
            NavigationView {
                ProfileView()
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }
        }
        .accentColor(.red)
    }
}

struct HomeView: View {
    var body: some View {
        Text("Home")
            .navigationBarTitle("Airbnb", displayMode: .inline)
    }
}

struct SearchView: View {
    var body: some View {
        VStack {
            AirbnbSearchBar()
            Text("Search")
                .navigationBarTitle("Search", displayMode: .inline)
        }
    }
}

struct TripsView: View {
    var body: some View {
        Text("Trips")
            .navigationBarTitle("Trips", displayMode: .inline)
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile")
            .navigationBarTitle("Profile", displayMode: .inline)
    }
}

struct AirbnbSearchBar: View {
    var body: some View {
        Button(action: {}) {
            HStack(spacing: 15) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 18))
                    .padding(.vertical, 12)
                    .foregroundColor(.primary)
                    .padding(.leading, 6.0)
                VStack(alignment: .leading, spacing: 3) {
                    Text("Where to?")
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                        .font(.system(size: 14))

                    Text("Anywhere • Any week • Add guests")
                        .font(.caption)
                        .foregroundColor(.black)
                        .fontWeight(.regular)
                        .font(.system(size: 8))
                        .lineLimit(1)
                }
                .padding(.trailing)
            }
            .padding(.vertical, 6.0)
            Button(action: {}) {
                Image(systemName: "slider.horizontal.3")
                    .font(.headline)
                    .frame(width: 40, height: 40)
                    .background(Color.white)
                    .clipShape(Circle())
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color(.systemGray6), lineWidth: 2)
                    )
            }
            .padding(.leading, 0.0)
        }
        .padding(.horizontal, 8.0)
        .background(
            RoundedRectangle(cornerRadius: 40)
                .fill(Color.white)
                .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 0)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}