//
//  IpObject.m
//  RssReader
//
//  Created by Andrews on 09.02.15.
//  Copyright (c) 2015 andrews. All rights reserved.
//

#import "IpObject.h"

@implementation IpObject

-(IpObject*) initWithDictionary:(NSDictionary*)dictionaryObject{
    self.ip = [dictionaryObject valueForKey:@"ip"];
    self.isp =[dictionaryObject valueForKey:@"isp"];
    return self;
}

@end
