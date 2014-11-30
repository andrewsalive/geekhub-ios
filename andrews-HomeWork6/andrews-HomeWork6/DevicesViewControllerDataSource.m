//
//  DevicesViewControllerDataSource.m
//  andrews-HomeWork6
//
//  Created by Andrews on 23.11.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "DevicesViewControllerDataSource.h"

@interface DevicesViewControllerDataSource()

@property (nonatomic, strong, readwrite) NSArray *phones;
@property (nonatomic, strong, readwrite) NSArray *tabs;


@end


@implementation DevicesViewControllerDataSource

-(instancetype) init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.phones = [self getDevices:0];
    self.tabs = [self getDevices:1];

    
    return self;
}

-(void) dealloc {
    self.phones = nil;
    self.tabs = nil;

    [super dealloc];
}


-(NSArray *) getDevices:(NSInteger)section {
    NSArray *phones = @[@"iPhone", @"iPhone 3G", @"iPhone 4", @"iPhone 4S", @"iPhone 5", @"iPhone 5S", @"iPhone 6", @"iPhone 6+"];
    NSArray *tabs = @[@"iPad",@"iPad 2", @"iPad 3", @"iPad 4", @"iPad Air"];
    NSArray *array;
    NSDictionary *devices = [[NSDictionary alloc] initWithObjectsAndKeys:
                             phones, @"herephones",
                             tabs, @"heretabs",
                             nil];
    
    if (section == 0) {
        array = [devices objectForKey:@"herephones"];
    } else {
        array = [devices objectForKey:@"heretabs"];
    }
    
    [array autorelease];
    
    
    return [[array copy] autorelease];
}


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return [self.phones count];
    } else {
        return [self.tabs count];
    }
}


-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellId;
    if (indexPath.section == 0) {
        cellId = PhoneCellIdentifier;
    } else {
        cellId = TabCellIdentifier;
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    NSString *title;
    if (indexPath.section == 0) {
        title = self.phones[indexPath.row];
    } else {
        title = self.tabs[indexPath.row];
    }
    cell.textLabel.text = title;
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @"iPhones";
    } else {
        return @"iPads";
    }
}

@end

NSString * const PhoneCellIdentifier = @"PhoneCellIdentifier";
NSString * const TabCellIdentifier = @"TabsCellIdentifier";

