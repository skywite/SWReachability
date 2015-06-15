# SWReachability

Reachability with blocks. One line code implementation. When change network status it will go to block.

You need to add "SystemConfiguration" frameworks into your project before implement this.

Few connection status are avaialbe. 


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
