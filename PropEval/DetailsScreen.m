//
//  DetailsScreen.m
//  PropEval
//
//  Created by Gowtham on 11/01/15.
//  Copyright (c) 2015 Gowtham. All rights reserved.
//

#import "DetailsScreen.h"

@interface DetailsScreen ()

@end

@implementation DetailsScreen

- (void)viewDidLoad {
    
    self.lblPrpDisplayAtDisplaySrn.text= [((AppDelegate*)[UIApplication sharedApplication].delegate).PropName mutableCopy];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
 NSString *YourselectedTitle = [self.yourArrayName objectAtIndex:[self.yourPickerName selectedRowInComponent:0]];
 NSLog(@"%@", YourselectedTitle);
*/

- (IBAction)btnGetImages:(id)sender {
}

- (IBAction)btnGetNotes:(id)sender {
}
@end
