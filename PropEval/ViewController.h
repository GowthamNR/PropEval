//
//  ViewController.h
//  PropEval
//
//  Created by Gowtham on 10/01/15.
//  Copyright (c) 2015 Gowtham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
@property(strong,nonatomic) NSMutableArray *PropList;
- (void)loadInitialData;
@property (weak, nonatomic) IBOutlet UIPickerView *PropPickerAtSelectionScr;
- (IBAction)BtnConfirm:(id)sender;

@end

