//
//  ViewController.m
//  andrews-HomeWork6
//
//  Created by Andrews on 23.11.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "DevicesViewControllerDataSource.h"
#import "DeviceDetailsViewController.h"

#import "ViewController.h"

@interface ViewController() <UITableViewDelegate>

@property (nonatomic, strong) DevicesViewControllerDataSource *dataSoruce;
@property (nonatomic, assign) UITableView *tableView;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self = [super initWithNibName:nil bundle:nil];

    // Do any additional setup after loading the view, typically from a nib.
    
    DevicesViewControllerDataSource *dataSource = [[DevicesViewControllerDataSource alloc] init];
    self.dataSoruce = dataSource;
    [dataSource release];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:tableView];
    self.tableView = tableView;
    self.tableView.dataSource = self.dataSoruce;
    self.tableView.delegate = self;
//    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:<#(NSString *)#>]
    [tableView release]; // ??
    
    UINavigationController *naivagationController = [[UINavigationController alloc] initWithRootViewController:self];
//    [countriesViewController release];
    self.window.rootViewController = naivagationController;
    [naivagationController release];

    
    [self setTitle:@"Devices"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *deviceName = selectedCell.textLabel.text;
    
    DeviceDetailsViewController *detailViewController = [[DeviceDetailsViewController alloc] initWithDeviceName:deviceName];
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
}

@end
