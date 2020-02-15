import SwiftUI
import UIKit
import PlaygroundSupport

struct SampleView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<SampleView>) -> SampleUIView {
        print(#function)
        return .init(frame: .zero)
    }

    func updateUIView(_ uiView: SampleUIView, context: UIViewRepresentableContext<SampleView>) {
        print(#function)
    }

    func makeCoordinator() -> Coordinator {
        print(#function)
        return .init()
    }
}

extension SampleView {
    class Coordinator: NSObject {
        override init() {
            print(#function)
            super.init()
        }

        deinit {
            print(Self.self, #function)
        }
    }
}

class SampleUIView: UIView {
    required init?(coder: NSCoder) {
        fatalError()
    }
    override init(frame: CGRect) {
        print(#function)
        super.init(frame: frame)

        let label = UILabel()
        label.text = "Hello world!"

        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

    deinit {
        print(Self.self, #function)
    }
}

PlaygroundPage.current.setLiveView(SampleView())
print()
PlaygroundPage.current.liveView = nil
