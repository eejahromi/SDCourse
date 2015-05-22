//
//  DisplayEditViewController.h
//  CDCourse
//
//  Created by Ehsan Jahromi on 5/21/15.
//  Copyright (c) 2015 Ehsan Jahromi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"

@interface DisplayEditViewController : UIViewController

@property (nonatomic,strong) Course *currentCourse;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *authorField;
@property (weak, nonatomic) IBOutlet UITextField *dateField;


@property (weak, nonatomic) IBOutlet UIButton *editButton;
@property (weak, nonatomic) IBOutlet UIButton *doneButton;

- (IBAction)startEditing:(id)sender;
- (IBAction)doneEditing:(id)sender;


@end
