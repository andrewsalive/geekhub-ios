//
//  DetailViewController.m
//  homework9
//
//  Created by Andrews on 21.12.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "DetailViewController.h"
@import CoreData;

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *eventEditor;
@property (weak, nonatomic) IBOutlet UISwitch *statusSwitcher;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        _eventEditor.text = [[self.detailItem valueForKey:@"name"] description];
        
        NSString *completed;
        completed = [[self.detailItem valueForKey:@"status"] description];
        if ([completed isEqualToString:@"1"]) {
            _statusSwitcher.on = YES;
        }
        else {
            _statusSwitcher.on = NO;
        }

    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveValues:(UIButton *)sender {
    [_detailItem setValue:_eventEditor.text forKey:@"name"];
    if (_statusSwitcher.isOn) {
        [_detailItem setValue:@"1" forKey:@"status"];
    } else {
        [_detailItem setValue:@"0" forKey:@"status"];
    }
    
    [self.context save:nil];
    
}


@end
