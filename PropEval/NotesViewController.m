//
//  NotesViewController.m
//  PropEval
//
//  Created by Gowtham on 12/01/15.
//  Copyright (c) 2015 Gowtham. All rights reserved.
//

#import "NotesViewController.h"

@interface NotesViewController ()

@end

@implementation NotesViewController

- (void)viewDidLoad {
     self.lblPrpAtNotesScr.text = [((AppDelegate*)[UIApplication sharedApplication].delegate).PropName mutableCopy];
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
}*/
- (IBAction)BtnSaveAtNotesScr:(id)sender {
    
    [self.TxtVwAtNotesScrn setHidden:NO];
    self.TxtVwAtNotesScrn.text=[NSString stringWithFormat:@"%@",self.TxtFldAtNotesScrn.text];
 
    AppDelegate *appDe= (AppDelegate *)[[UIApplication sharedApplication] delegate];
   NSManagedObject *propertyDetails = [NSEntityDescription insertNewObjectForEntityForName:@"PropertyData" inManagedObjectContext:appDe.managedObjectContext];
    [propertyDetails setValue:self.lblPrpAtNotesScr.text forKey:@"property_name"];
    [propertyDetails setValue:self.TxtFldAtNotesScrn.text forKey:@"property_notes"];
    UIAlertView *alert =[[UIAlertView alloc]initWithTitle:@"Success" message:@"Data saved sucessfully" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
            [alert show];
    
    [self.btnSaveAtNotesScr setHidden:YES];
  //  NSError *error = nil;
    // Save the object to persistent store
//    if (![appDe.managedObjectContext save:&error]) {
//        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
//    }
//    else{
//        
//        AppDelegate *appDe= (AppDelegate *)[[UIApplication sharedApplication] delegate];
//        
//        
//        NSFetchRequest *fetchRequest1 = [NSFetchRequest fetchRequestWithEntityName:@"PropertyData"];
//        NSEntityDescription *entity1 = [NSEntityDescription entityForName:@"PropertyData" inManagedObjectContext:appDe.managedObjectContext];
//        fetchRequest1.resultType = NSDictionaryResultType;
//        fetchRequest1.propertiesToFetch = [NSArray arrayWithObject:[[entity1 propertiesByName] objectForKey:@"property_notes"]];
//        fetchRequest1.returnsDistinctResults = YES;
//      self.Notes = [appDe.managedObjectContext executeFetchRequest:fetchRequest1 error:nil];
//       // NSLog (@"data in database is dcskdcbjksdc %@",self.Notes);
//        
//        
//        
//        NSFetchRequest *fetchRequest2 = [NSFetchRequest fetchRequestWithEntityName:@"PropertyData"];
//        NSEntityDescription *entity2 = [NSEntityDescription entityForName:@"PropertyData" inManagedObjectContext:appDe.managedObjectContext];
//        fetchRequest2.resultType = NSDictionaryResultType;
//        fetchRequest2.propertiesToFetch = [NSArray arrayWithObject:[[entity2 propertiesByName] objectForKey:@"property_name"]];
//        fetchRequest2.returnsDistinctResults = YES;
//        self.Names = [appDe.managedObjectContext executeFetchRequest:fetchRequest2 error:nil];
//        // NSLog (@"data in database is names %@",self.Names);
//      
//        
//        UIAlertView *alert =[[UIAlertView alloc]initWithTitle:@"Success" message:@"Data saved sucessfully" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
//        [alert show];
//        NSLog(@"REACHE AT NOTS 1STAGE");
//    
//        }
  }
- (IBAction)BtnSeeData:(id)sender {
    }
@end

