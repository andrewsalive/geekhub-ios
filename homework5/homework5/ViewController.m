//
//  ViewController.m
//  homework5
//
//  Created by Andrews on 24.11.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource> {
    NSArray *phones;
    NSArray *tabs;
}
@property (weak, nonatomic) IBOutlet UITableView *second;

@property (weak, nonatomic) IBOutlet UITableView *firstTable;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    phones = [[NSArray alloc] initWithObjects:@"iPhone", @"iPhone 3G", @"iPhone 4", @"iPhone 4S", @"iPhone 5", @"iPhone 5S", @"iPhone 6", @"iPhone 6+", nil];
    tabs = [[NSArray alloc] initWithObjects:@"iPad",@"iPad 2", @"iPad 3", @"iPad 4", @"iPad Air", nil];
    
    self.firstTable.dataSource = self;
    self.second.dataSource = self;


}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (tableView == _firstTable) {
        return [phones count];
    } else {
        return [tabs count];
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.backgroundColor = [UIColor grayColor];
    if (tableView == _firstTable) {
        cell.textLabel.text = self->phones[indexPath.row];
    } else {
        cell.textLabel.text = self->tabs[indexPath.row];
    }

    return cell;
}


@end
