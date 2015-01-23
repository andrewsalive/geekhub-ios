//
//  DetailViewController.h
//  homework9
//
//  Created by Andrews on 21.12.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (nonatomic, weak) NSManagedObjectContext * context;


@end

