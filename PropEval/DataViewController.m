//
//  DataViewController.m
//  PropEval
//
//  Created by Gowtham on 13/01/15.
//  Copyright (c) 2015 Gowtham. All rights reserved.
//

#import "DataViewController.h"

@interface DataViewController ()

@end

@implementation DataViewController

- (void)viewDidLoad {
    [self loadInitialData];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)loadInitialData
{
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
*/

- (IBAction)BtncofirmAtGatheredDataScr:(id)sender
{
    [self.imgVwAtGatheredData setHidden:YES];
    [self.txtVwAtGatheredData setHidden:NO];
    
    AppDelegate *appDe= (AppDelegate *)[[UIApplication sharedApplication] delegate];

    
    NSString *YourselectedTitle = [self.PropList objectAtIndex:[self.propPickerAtGatheredData selectedRowInComponent:0]];
  //  NSLog(@"%@",YourselectedTitle);

    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"PropertyData"
                                              inManagedObjectContext:appDe.managedObjectContext];
    [fetchRequest setEntity:entity];
    [fetchRequest setReturnsObjectsAsFaults:NO];
    [fetchRequest setPredicate:[NSPredicate predicateWithFormat:@"property_name == %@", YourselectedTitle]];
    
    
    NSError *error;
    NSArray *fetchedObjects = [appDe.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    NSString *dataGot=[fetchedObjects valueForKey:@"property_notes"];
    self.txtVwAtGatheredData.text =[NSString stringWithFormat:@"%@",dataGot];
   // NSLog(@"%@",dataGot);
    
    
}
@end
