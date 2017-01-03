# EliOS
Template to start a great IOS project in Swift 3

# Pods included:
  1. RealmSwift
  2. RxCocoa
  3. RXSwift (reactive coding) - https://github.com/ReactiveX/RxSwift
  4. Alamofire (http client) - https://github.com/Alamofire/Alamofire
  5. ObjectMapper (Object -> JSON) - https://github.com/Hearst-DD/ObjectMapper
  6. AlamofireObjectMapper (extension) - https://github.com/tristanhimmelman/AlamofireObjectMapper
  7. SwiftyBeaver (logging) - https://github.com/SwiftyBeaver/SwiftyBeaver
  8. Reqres (logging Alamofire http requests) - https://github.com/AckeeCZ/Reqres
  
  # TD list
  1. add crashlytics
  2. add Swifter swift
  3. add font-awesome 
  
# Architecture
1. MVVM implementation with .xib outsourced from Storyboard (Storyboard only used to implement navigation throw segways).
2. Façade pattern (DataManager singleton class access throw observables than then could access prefences, local database and web services).
3. Observable pattern from ReactiveX to do none ui tasks.

  # TD list
  1. Decorator patern whit Swift Extension and Delegates


# Get start
1. Install CocoaPods: From the command line, run sudo gem install cocoapods
2. Install dependencies: 
  - From the command line and inside your project, run pod install.
  - Use the .xcworkspace file generated by CocoaPods to work on your project!

# Improvements list 
(Good libraries list: https://github.com/Wolg/awesome-swift#http)
- Data structure
- Unit test
- Script to auto generate MVVM class and .xib
- Dependency injections
- Strategy pattern
- Tasks queue
