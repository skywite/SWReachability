//
//  ViewController.m
//  ReachabilityExample
//
//  Created by Saman Kumara on 6/15/15.
//  Copyright (c) 2015 Saman Kumara. All rights reserved.
//

#import "ViewController.h"
#import "SWReachability.h"
@interface ViewController (){
    IBOutlet UILabel *statusLbl;
    IBOutlet UILabel *notificationStatusLbl;

}

@end

@implementation ViewController


- (void)viewDidLoad {
    
    if ([SWReachability getCurrentNetworkStatus] == SWNetworkReachabilityStatusNotReachable) {
        statusLbl.text = @"Connection not avaialbe.";
    }else if ([SWReachability getCurrentNetworkStatus] == SWNetworkReachabilityStatusReachableViaWiFi){
        statusLbl.text = @"Wifi is uisng";
    }else if ([SWReachability getCurrentNetworkStatus] == SWNetworkReachabilityStatusReachableViaWWAN){
        statusLbl.text = @"WWAN is uisng";
    }
    
    
    
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
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
