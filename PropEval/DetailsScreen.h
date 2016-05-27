//
//  DetailsScreen.h
//  PropEval
//
//  Created by Gowtham on 11/01/15.
//  Copyright (c) 2015 Gowtham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface DetailsScreen : UIViewController<UIImagePickerControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lblPrpDisplayAtDisplaySrn;
- (IBAction)btnGetImages:(id)sender;
- (IBAction)btnGetNotes:(id)sender;

@end
