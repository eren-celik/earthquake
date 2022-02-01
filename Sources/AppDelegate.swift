import UIKit
import NetworkModule

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
        let window = UIWindow(frame: UIScreen.main.bounds)
        let root = UIViewController()
        let navigation = UINavigationController(rootViewController: root)
        root.title = "title"
        root.view.backgroundColor = .red
        window.rootViewController = navigation
        window.makeKeyAndVisible()
        self.window = window
        return true
    }
}
