# MVP-Template for Swift 4

**!! Dependent on the SwInject framework**

All you need to start using MVP in your iOS project. 
This Clean Architecture divides an app’s logical structure into distinct layers of responsibility, makes it easier to isolate dependencies, maintain and test your iOS project of any size!

## Integration


## Install xCode File Templates

### Using terminal
Open terminal and then run ```sudo swift install.swift```

### Manually
Copy folder `/Modules/MVP.xctemplate` to `/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File\ Templates/`

Ok. Now you should be able to find new MVP template in `New File` menu under the section named Modules (probably, the last one).

## Add Base interfaces
Copy file named files from direcory `BaseInterfaces/MVP` to your project.

## Add SwInject dependency
Using CocoaPods/Carthage/Git submodules. Installation described in SwInject GitHub official page.
