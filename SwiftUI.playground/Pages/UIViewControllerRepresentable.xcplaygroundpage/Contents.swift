import SwiftUI
import UIKit
import PlaygroundSupport

struct SampleView: UIViewControllerRepresentable {
    typealias UIViewControllerType = SampleUIViewController

    func makeUIViewController(context: UIViewControllerRepresentableContext<SampleView>) -> SampleUIViewController {
        print(#function)
        return .init()
    }

    func updateUIViewController(_ uiViewController: SampleUIViewController, context: UIViewControllerRepresentableContext<SampleView>) {
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

class SampleUIViewController: UIViewController {
    override func loadView() {
        print(#function)
        super.loadView()

        let label = UILabel()
        label.text = "Hello world!"

        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    override func viewDidLoad() {
        print(#function)
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        print(#function)
        super.viewWillAppear(animated)
    }

    override func viewWillLayoutSubviews() {
        print(#function)
        super.viewWillLayoutSubviews()
    }

    override func viewDidLayoutSubviews() {
        print(#function)
        super.viewDidLayoutSubviews()
    }

    override func viewDidAppear(_ animated: Bool) {
        print(#function)
        super.viewDidAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
        super.viewWillDisappear(animated)
    }

    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
        super.viewDidDisappear(animated)
    }

    deinit {
        print(Self.self, #function)
    }
}

let view = SampleView()

PlaygroundPage.current.setLiveView(view)
print()
PlaygroundPage.current.liveView = nil
print()
PlaygroundPage.current.setLiveView(view)
print()
PlaygroundPage.current.liveView = nil
