//
//  AddCourseViewController.m
//  CDCourse
//
//  Created by Ehsan Jahromi on 5/19/15.
//  Copyright (c) 2015 Ehsan Jahromi. All rights reserved.
//

#import "AddCourseViewController.h"

@interface AddCourseViewController ()

@end

@implementation AddCourseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleField.text = [self.currentCourse title];
    self.authorField.text = [self.currentCourse title];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    self.dateField.text = [dateFormat stringFromDate:[self.currentCourse releaseDate]];
    
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

- (IBAction)cancel:(id)sender {
    [self.delegate addCourseViewControllerDidCancel:[self currentCourse]];
}

- (IBAction)save:(id)sender {
    [self.currentCourse setTitle:self.titleField.text];
    [self.currentCourse setAuthor:self.authorField.text];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    [self.currentCourse setReleaseDate:[dateFormat dateFromString:self.dateField.text]];
    
    [self.delegate addCourseViewControllerDidSave];
    
}
@end
