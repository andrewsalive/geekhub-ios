//
//  ViewController.m
//  homework7
//
//  Created by Andrews on 29.11.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *buttonText;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;
@property (weak, nonatomic) IBOutlet UILabel *segmentValue;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *textFieldValue;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *sliderValue;
@property (weak, nonatomic) IBOutlet UISwitch *swicher;
@property (weak, nonatomic) IBOutlet UIButton *progressButton;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *progressCircle;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@property (weak, nonatomic) IBOutlet UILabel *stepperValue;
@property (weak, nonatomic) IBOutlet UIButton *imageButton;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property int counter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
    _counter = 0;
    _sliderValue.text = [NSString stringWithFormat:@"%d", (int)_slider.value];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(UIButton *)sender
{
    _buttonText.text = [NSString stringWithFormat:@"%d", _counter++];
}

- (IBAction)segmentation:(UISegmentedControl *)sender
{
    _segmentValue.text = [NSString stringWithFormat:@"%ld", sender.selectedSegmentIndex+1];
}

- (IBAction)textValueChanged:(UITextField *)sender
{
    _textFieldValue.text = [sender text];
}

- (IBAction)sliderChanged:(UISlider *)sender
{
    _sliderValue.text = [NSString stringWithFormat:@"%d", (int)sender.value];
}

- (IBAction)switched:(UISwitch *)sender {
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"AlertView"
                              message:[NSString stringWithFormat:@"Switch state was changed to %@",
                                       sender.isOn ? @"ON" : @"OFF"]
                              delegate:nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
    [alertView show];
}

- (IBAction)progressClicked:(UIButton *)sender {
    if ([_progressCircle isAnimating]) {
        [_progressCircle stopAnimating];
    } else {
        [_progressCircle startAnimating];
    }
}


- (IBAction)stepped:(UIStepper *)sender
{
    _stepperValue.text = [NSString stringWithFormat:@"%d", (int)sender.value];

}

- (IBAction)clickedImageButton:(UIButton *)sender
{
    _image.image = [UIImage imageNamed: @"welldone.jpg"];
    
}


@end
