//
//  ViewController.m
//  homework1
//
//  Created by Andrews on 04.01.15.
//  Copyright (c) 2015 andrews. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

typedef enum {
    January,
    February,
    March,
    April,
    May,
    June,
    July,
    August,
    September,
    October,
    November,
    December
} Month;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    showMonths();
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

void showMonths()
{
    NSInteger randomNumber = arc4random() % 2;
    switch (randomNumber) {
        case 0:
            NSLog(@"CASE 0");
            for (int i = 0; i < 12; i++) {
                if (i == 0) {
                    NSLog(@"January");
                } else if (i == 1) {
                    NSLog(@"February");
                } else if (i == 2) {
                    NSLog(@"March");
                } else if (i == 3) {
                    NSLog(@"April");
                } else if (i == 4) {
                    NSLog(@"May");
                } else if (i == 5) {
                    NSLog(@"June");
                } else if (i == 6) {
                    NSLog(@"July");
                } else if (i == 7) {
                    NSLog(@"August");
                } else if (i == 8) {
                    NSLog(@"September");
                } else if (i == 9) {
                    NSLog(@"October");
                } else if (i == 10) {
                    NSLog(@"November");
                } else if (i == 11) {
                    NSLog(@"December");
                }
            }
            break;
        case 1:
            NSLog(@"CASE 1");
            for (int i = 0; i < 12; i++) {
                switch (i) {
                    case January:
                        NSLog(@"January");
                        break;
                    case February:
                        NSLog(@"February");
                        break;
                    case March:
                        NSLog(@"March");
                        break;
                    case April:
                        NSLog(@"April");
                        break;
                    case May:
                        NSLog(@"May");
                        break;
                    case June:
                        NSLog(@"June");
                        break;
                    case July:
                        NSLog(@"July");
                        break;
                    case August:
                        NSLog(@"August");
                        break;
                    case September:
                        NSLog(@"September");
                        break;
                    case October:
                        NSLog(@"October");
                        break;
                    case November:
                        NSLog(@"November");
                        break;
                    case December:
                        NSLog(@"December");
                        break;
                    default:
                        break;
                }
            }
            break;
        default:
            break;
    }
}

@end
