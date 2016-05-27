//
//  PhotoPickerScr.h
//  PropEval
//
//  Created by Gowtham on 12/01/15.
//  Copyright (c) 2015 Gowtham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoPickerScr : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *ImgVwAtPhotoPicScr;
- (IBAction)BtnTakePhoto:(id)sender;
- (IBAction)BtnSelectPhoto:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnConfirmRef;

@end
