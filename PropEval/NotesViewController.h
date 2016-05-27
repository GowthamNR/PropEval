//
//  NotesViewController.h
//  PropEval
//
//  Created by Gowtham on 12/01/15.
//  Copyright (c) 2015 Gowtham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <CoreData/CoreData.h>

@interface NotesViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lblPrpAtNotesScr;
- (IBAction)BtnSaveAtNotesScr:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *TxtFldAtNotesScrn;
@property (weak, nonatomic) IBOutlet UITextView *TxtVwAtNotesScrn;
- (IBAction)BtnSeeData:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnSaveAtNotesScr;


@end
