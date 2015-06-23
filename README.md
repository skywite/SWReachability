# SWReachability


<p align="center" >
  <img src="http://skywite.com/wp-content/uploads/2015/05/skywite.png" alt="AFNetworking" title=“SkyWite”>
</p>



[![CI Status](https://travis-ci.org/skywite/SWReachability.svg?branch=master](https://travis-ci.org/skywite/SWReachability)
[![Version](https://img.shields.io/cocoapods/v/SWReachability.svg?style=flat)](http://cocoapods.org/pods/SWReachability)
[![License](https://img.shields.io/cocoapods/l/SWReachability.svg?style=flat)](http://cocoapods.org/pods/SWReachability)
[![Platform](https://img.shields.io/cocoapods/p/SWReachability.svg?style=flat)](http://cocoapods.org/pods/SWReachability)


Reachability with blocks. One line code implementation. When change network status it will go to block.

# Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

# Requirements

You need to add "SystemConfiguration" frameworks into your project before implement this.


# Installation

SWReachability is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SWReachability"
```

Few connection status are avaialable. 


```objective-c

typedef NS_ENUM(NSInteger, SWNetworingReachabilityStatus) {
    SWNetworkReachabilityStatusNotReachable = 0,
    SWNetworkReachabilityStatusReachableViaWWAN = 1,
    SWNetworkReachabilityStatusReachableViaWiFi = 2,
};
```

# Get current status

When call getCurrentNetworkStatus method it will return current status.


```objective-c

 if ([SWReachability getCurrentNetworkStatus] == SWNetworkReachabilityStatusNotReachable) {
        statusLbl.text = @"Connection not avaialbe.";
    }else if ([SWReachability getCurrentNetworkStatus] == SWNetworkReachabilityStatusReachableViaWiFi){
        statusLbl.text = @"Wifi is uisng";
    }else if ([SWReachability getCurrentNetworkStatus] == SWNetworkReachabilityStatusReachableViaWWAN){
        statusLbl.text = @"WWAN is uisng";
    }

```

# Implement with notification change block 

SwReachability will provide block when change notification. So few notification handeling lines will save. 


```objective-c

[SWReachability checkCurrentStatus:^(SWNetworingReachabilityStatus currentStatus) {
        //you can get current status        
        
    } statusChange:^(SWNetworingReachabilityStatus changedStatus) {
        //when change status this will fire and you can identify current status
    
    }];

```

See following exmaple 


```objective-c

[SWReachability checkCurrentStatus:^(SWNetworingReachabilityStatus currentStatus) {
        //you can get current status
        
        if (currentStatus == SWNetworkReachabilityStatusNotReachable) {
            notificationStatusLbl.text = @"Connection not avaialbe.";
        }else if (currentStatus == SWNetworkReachabilityStatusReachableViaWiFi){
            notificationStatusLbl.text = @"Wifi is uisng";
        }else if (currentStatus == SWNetworkReachabilityStatusReachableViaWWAN){
            notificationStatusLbl.text = @"WWAN is uisng";
        }
        
    } statusChange:^(SWNetworingReachabilityStatus changedStatus) {
        //when change status this will fire and you can identify current status
    
        if (changedStatus == SWNetworkReachabilityStatusNotReachable) {
            notificationStatusLbl.text = @"Connection not avaialbe.";
        }else if (changedStatus == SWNetworkReachabilityStatusReachableViaWiFi){
            notificationStatusLbl.text = @"Wifi is uisng";
        }else if (changedStatus == SWNetworkReachabilityStatusReachableViaWWAN){
            notificationStatusLbl.text = @"WWAN is uisng";
        }
        
    }];

```


#Credits

SWReachability is owned and maintained by the SkyWite.

SWReachability was created by saman kumara (me@isamankumara.com)

##Security Disclosure

If you believe you have identified a security vulnerability with SWReachability, you should report it as soon as possible via email to info@skywite.com. Please do not post it to a public issue tracker.


## License

This is available under the MIT license. See the LICENSE file for more info.
