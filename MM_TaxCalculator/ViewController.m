//
//  ViewController.m
//  MM_TaxCalculator
//
//  Created by Mick Lerche on 2/8/15.
//  Copyright (c) 2015 Mick Lerche. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (strong, nonatomic) IBOutlet UITextField *priceTextField;
@property double caTax;
@property double chiTax;
@property double nyTax;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.caTax = 7.5;
    self.chiTax = 9.25;
    self.nyTax = 4.5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCalculateButtonTapped:(id)sender {

    double x = [self.priceTextField.text doubleValue];
    double y = self.segmentedControl.selectedSegmentIndex == 0 ? self.caTax :
    self.segmentedControl.selectedSegmentIndex == 1 ? self.chiTax : self.nyTax;

    self.resultLabel.text = [NSString stringWithFormat:@"%.02f", x*y*0.01];
}
@end
