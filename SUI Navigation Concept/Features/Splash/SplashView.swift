
import SwiftUI

struct SplashView: View {
    let onAnimationFinish: () -> Void

    @State private var isVisible = false

    var body: some View {
        ZStack {
            if isVisible {
                ZStack {
                    Color.white
                        .ignoresSafeArea()
                    VStack {
                        Image(systemName: "bolt.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.black)

                        Text("Splash")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                }
                .transition(.opacity)
            }
        }
        .task {
            withAnimation(.easeInOut(duration: 1)) {
                isVisible = true
            }
            try? await Task.sleep(for: .seconds(2))
            withAnimation(.easeInOut(duration: 1), {
                isVisible = false
            }, completion: {
                onAnimationFinish()
            })
        }
    }
}

#Preview {
    SplashView(onAnimationFinish: {})
}
