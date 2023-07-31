/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that clips an image to a circle and adds a stroke and shadow.
*/

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
//            .frame(width: 100, height: 300)
            .overlay {
                Circle().stroke(.white, lineWidth: 4) //image view 밖에 선 그릴 때 이용

            }
            .shadow(radius: 7) //그림자
        
//        Image("turtlerock")
//            .clipShape(Path { path in
//                path.move(to: CGPoint(x: 0, y: 0))
//                path.addLine(to: CGPoint(x: 0, y: 200))
//                path.addLine(to: CGPoint(x: 200, y: 0))
//                path.addLine(to: CGPoint(x: 100, y: 0))
//
//            })
//            .overlay {
//                Rectangle().stroke(.white, lineWidth: 4) //image view 밖에 선 그릴 때 이용
//
//            }
//            .shadow(radius: 7) //그림자
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
