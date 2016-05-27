//
//  DataViewController.h
//  PropEval
//
//  Created by Gowtham on 13/01/15.
//  Copyright (c) 2015 Gowtham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface DataViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
@property (strong, nonatomic) IBOutlet UIButton *btnConfirmAtGatheredData;
@property (strong, nonatomic) IBOutlet UIPickerView *propPickerAtGatheredData;
- (IBAction)BtncofirmAtGatheredDataScr:(id)sender;
@property(strong,nonatomic) NSMutableArray *PropList;
- (void)loadInitialData;
@property (strong, nonatomic) IBOutlet UITextView *txtVwAtGatheredData;
@property (strong, nonatomic) IBOutlet UIImageView *imgVwAtGatheredData;
@end
