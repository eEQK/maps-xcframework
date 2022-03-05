import SwiftUI
import UIKit
import GoogleMaps

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        GMSServices.provideAPIKey("AIzaSyAXrROm-s_ba6z54NfinfyM2wvYfGK2Qo8")
        return true
    }
}

@main
struct mapsTestApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            GoogleMapsView()
        }
    }
}

struct GoogleMapsView: UIViewRepresentable {
     
    func makeUIView(context: Context) -> GMSMapView {
             let mapView = GMSMapView(frame: CGRect.zero)
             
             return mapView
         }
     
     func updateUIView(_ uiView: GMSMapView, context: Context) {
         
     }
 }
struct GoogleMapsView_Previews: PreviewProvider {
    static var previews: some View {
        GoogleMapsView()
    }
}
