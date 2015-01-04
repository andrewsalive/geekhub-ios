//
//  Car.h
//  CoreDataProject
//
//  Created by Andrews on 15.12.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Car : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * model;
@property (nonatomic, retain) NSManagedObject *hasEngine;
@property (nonatomic, retain) NSManagedObject *hasWheel;

@end
