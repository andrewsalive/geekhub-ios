//
//  Engine.h
//  CoreDataProject
//
//  Created by Andrews on 15.12.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Car;

@interface Engine : NSManagedObject

@property (nonatomic, retain) NSNumber * litr;
@property (nonatomic, retain) Car *fromCar;

@end
