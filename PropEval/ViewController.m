//
//  ViewController.m
//  PropEval
//
//  Created by Gowtham on 10/01/15.
//  Copyright (c) 2015 Gowtham. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [self loadInitialData];
   [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)loadInitialData {
    self.PropList=[[NSMutableArray alloc]init];
    [self.PropList addObject:@"Property 1"];
    [self.PropList addObject:@"Property 2"];
    [self.PropList addObject:@"Property 3"];
    [self.PropList addObject:@"Property 4"];
    [self.PropList addObject:@"Property 5"];
    [self.PropList addObject:@"Property 6"];
    [self.PropList addObject:@"Property 7"];
    [self.PropList addObject:@"Property 8"];
    [self.PropList addObject:@"Property 9"];
    [self.PropList addObject:@"Property 10"];
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (self.PropList!=nil) {
        return [self.PropList count];
    }
    return 0;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (self.PropList!=nil) {
        return [self.PropList objectAtIndex:row];
    }
    return @"";
}

- (IBAction)BtnConfirm:(id)sender {
    NSString *YourselectedTitle = [self.PropList objectAtIndex:[self.PropPickerAtSelectionScr selectedRowInComponent:0]];
    ((AppDelegate*)[UIApplication sharedApplication].delegate).PropName = YourselectedTitle;
}
@end
