import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color.brown, Color.clear],
    startPoint: .bottom, endPoint: .top
)

struct ContentView: View {
    @State private var isLiked = false
    @State private var speed = 1.00
    @State private var isEditing = false
    @State private var isPlaying = false
    @State private var isRepeat = false
    
    var body: some View {
        ZStack {
            backgroundGradient
                .ignoresSafeArea()
            VStack(
                alignment: .leading
            ){
                HStack(
                    alignment: .top
                ){
                    Image(systemName: "chevron.down")
                    Spacer()
                    Text("Ho-Kago Tea Time")
                        .bold()
                    Spacer()
                    Image(systemName: "ellipsis")
                }
                .padding(.horizontal)
                
                Image("img01")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                    .padding()
                
                HStack(
                    alignment: .top
                ){
                    VStack(
                        alignment: .leading
                    )
                    {
                        Text("ふわふわTime")
                            .foregroundColor(.white)
                            .font(.title2)
                        Text("Ho-Kago Tea Time")
                            .foregroundColor(.white)
                            .bold()
                    }
                    .padding(.horizontal)
                    Spacer()
                    
                    Button(action: {
                        self.isLiked.toggle()
                    }) {
                        Image(systemName: isLiked ? "heart.fill" : "heart")
                            .padding(.horizontal)
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                
                Slider(
                    value: $speed,
                    in: 0...100,
                    step: 1
                ){} minimumValueLabel: {
                    Text("0:00")
                        .padding(.horizontal)
                        .foregroundColor(.white)
                } maximumValueLabel: {
                    Text("4:10")
                        .padding(.horizontal)
                        .foregroundColor(.white)
                }
                .tint(.white)
                .padding()
                
                HStack(
                    alignment: .top
                ) {
                    Image(systemName: "shuffle")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Image(systemName: "backward.end")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    Button(action: {
                        self.isPlaying.toggle()
                    }) {
                        Image(systemName: isPlaying ? "play.circle" : "pause.circle")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding()
                    }
                    Spacer()
                    Image(systemName: "forward.end")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    
                    Button(action :{
                        self.isRepeat.toggle()
                    }) {
                        Image(systemName: isRepeat ? "repeat.1" : "repeat")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                    }
                }
                HStack(
                    alignment: .top
                ) {
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                }
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
