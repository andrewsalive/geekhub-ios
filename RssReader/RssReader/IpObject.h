//
//  IpObject.h
//  RssReader
//
//  Created by Andrews on 09.02.15.
//  Copyright (c) 2015 andrews. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IpObject : NSObject


@property (nonatomic, strong) NSString *isp;
@property (nonatomic, strong) NSString *ip;

-(IpObject*) initWithDictionary:(NSDictionary*)dictionaryObject;


@end
