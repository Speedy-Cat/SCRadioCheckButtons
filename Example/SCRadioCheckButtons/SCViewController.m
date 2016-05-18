//
//  SCViewController.m
//  SCRadioCheckButtons
//
//  Created by Adrian Ortuzar on 05/17/2016.
//  Copyright (c) 2016 Adrian Ortuzar. All rights reserved.
//

#import "SCViewController.h"
#import "SCCheckBoxButton.h"
#import "SCRadioButton.h"
#import "SCRadioButtonCollection.h"

@interface SCViewController ()

@property (nonatomic, strong) SCRadioButtonCollection *radioButtonCollection;

@end

@implementation SCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor blackColor];
    
    SCCheckBoxButton *checkbox = [[SCCheckBoxButton alloc] initWithFrame:CGRectMake(50, 50, 200, 26)];
    checkbox.highlightColor = [UIColor greenColor];
    [checkbox setTitle:@"Checkbox test" forState:UIControlStateNormal];
    [self.view addSubview:checkbox];
    
    SCCheckBoxButton *checkbox2 = [[SCCheckBoxButton alloc] initWithFrame:CGRectMake(50, 90, 200, 26)];
    checkbox2.highlightColor = [UIColor greenColor];
    [checkbox2 setTitle:@"Checkbox test 2" forState:UIControlStateNormal];
    [self.view addSubview:checkbox2];
    
    
    SCRadioButton *radioButton = [[SCRadioButton alloc] initWithFrame:CGRectMake(50, 150, 200, 26)];
    radioButton.highlightColor = [UIColor blueColor];
    [radioButton setTitle:@"Male" forState:UIControlStateNormal];
    [self.view addSubview:radioButton];
    
    SCRadioButton *radioButton1 = [[SCRadioButton alloc] initWithFrame:CGRectMake(50, 190, 200, 26)];
    radioButton1.highlightColor = [UIColor purpleColor];
    [radioButton1 setTitle:@"Female" forState:UIControlStateNormal];
    [self.view addSubview:radioButton1];
    
    NSSet *buttons = [[NSSet alloc] initWithArray:@[radioButton1, radioButton]];
    self.radioButtonCollection = [[SCRadioButtonCollection alloc] initWithButtons:buttons];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
