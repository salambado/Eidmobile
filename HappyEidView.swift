import SwiftUI

struct HappyEidView: View {
    let userName: String
    @State private var showEidList = false
    
    var body: some View {
        VStack(spacing: 30) {
            Image(systemName: "moon.stars.fill")
                .resizable()
                .frame(width: 120, height: 120)
                .foregroundColor(.yellow)
                .padding(.top, 40)
            
            Text("Eid Mubarak")
                .font(.system(size: 40, weight: .bold))
                .foregroundColor(.green)
            
            Text("Dear \(userName)")
                .font(.title)
                .foregroundColor(.blue)
            
            Text("May this Eid bring joy and happiness to you and your family!")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            NavigationLink(destination: EidListView(), isActive: $showEidList) {
                Button(action: {
                    showEidList = true
                }) {
                    Text("View Eid Collection")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(10)
                }
            }
            
            Spacer()
        }
        .navigationBarTitle("Happy Eid", displayMode: .inline)
    }
} 