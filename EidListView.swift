import SwiftUI
import AVFoundation

struct EidListItem: Identifiable {
    let id = UUID()
    let icon: String
    let text: String
    let soundFileName: String
}

struct EidListView: View {
    @State private var audioPlayer: AVAudioPlayer?
    
    let items: [EidListItem] = [
        EidListItem(icon: "music.note", text: "Eid Takbeer", soundFileName: "sound1"),
        EidListItem(icon: "music.mic", text: "Traditional Nasheed", soundFileName: "sound2"),
        EidListItem(icon: "music.house", text: "Eid Song 1", soundFileName: "sound3"),
        EidListItem(icon: "music.note.list", text: "Family Celebration", soundFileName: "sound4"),
        EidListItem(icon: "music.quarternote.3", text: "Children's Eid", soundFileName: "sound5"),
        EidListItem(icon: "music.note", text: "Festival Music", soundFileName: "sound6"),
        EidListItem(icon: "music.mic", text: "Prayer Call", soundFileName: "sound7"),
        EidListItem(icon: "music.house", text: "Celebration Beat", soundFileName: "sound8"),
        EidListItem(icon: "music.note.list", text: "Eid Morning", soundFileName: "sound9"),
        EidListItem(icon: "music.quarternote.3", text: "Holiday Spirit", soundFileName: "sound10"),
        EidListItem(icon: "music.note", text: "Festive Rhythm", soundFileName: "sound11"),
        EidListItem(icon: "music.mic", text: "Joy of Eid", soundFileName: "sound12"),
        EidListItem(icon: "music.house", text: "Community Song", soundFileName: "sound13"),
        EidListItem(icon: "music.note.list", text: "Celebration Tune", soundFileName: "sound14"),
        EidListItem(icon: "music.quarternote.3", text: "Festival Harmony", soundFileName: "sound15")
    ]
    
    var body: some View {
        List(items) { item in
            HStack {
                Image(systemName: item.icon)
                    .font(.title2)
                    .foregroundColor(.blue)
                    .frame(width: 30)
                
                Text(item.text)
                    .font(.body)
                
                Spacer()
                
                Button(action: {
                    playSound(fileName: item.soundFileName)
                }) {
                    Image(systemName: "play.circle.fill")
                        .font(.title)
                        .foregroundColor(.green)
                }
            }
            .padding(.vertical, 8)
        }
        .navigationBarTitle("Eid Sounds", displayMode: .inline)
    }
    
    private func playSound(fileName: String) {
        guard let path = Bundle.main.path(forResource: fileName, withExtension: "mp3") else {
            print("Could not find sound file: \(fileName)")
            return
        }
        
        let url = URL(fileURLWithPath: path)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            print("Error playing sound: \(error.localizedDescription)")
        }
    }
} 