//
//  DevicesViewControllerDataSource.h
//  andrews-HomeWork6
//
//  Created by Andrews on 23.11.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface DevicesViewControllerDataSource : NSObject<UITableViewDataSource>

@property (nonatomic, strong, readonly) NSArray *phones;
@property (nonatomic, strong, readonly) NSArray *tabs;

@end

extern NSString * const PhoneCellIdentifier;
extern NSString * const TabCellIdentifier;