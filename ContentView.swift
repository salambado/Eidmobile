import SwiftUI

struct ContentView: View {
    @State private var userName: String = ""
    @State private var navigateToEidMessage = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                    .padding(.top, 50)
                
                Text("Welcome to Eid Celebration!")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                
                TextField("Enter your name", text: $userName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 40)
                
                NavigationLink(destination: HappyEidView(userName: userName),
                             isActive: $navigateToEidMessage) {
                    Button(action: {
                        if !userName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                            navigateToEidMessage = true
                        }
                    }) {
                        Text("Continue")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
                .disabled(userName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                
                Spacer()
            }
            .navigationBarTitle("Eid App", displayMode: .large)
        }
    }
} 