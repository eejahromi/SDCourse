//
//  CourseTableViewController.h
//  CDCourse
//
//  Created by Ehsan Jahromi on 5/18/15.
//  Copyright (c) 2015 Ehsan Jahromi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "AddCourseViewController.h"

@interface CourseTableViewController : UITableViewController <AddCourseViewControllerDelegate,NSFetchedResultsControllerDelegate>

@property (nonatomic,strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic,strong) NSFetchedResultsController *fetchedResultsController;

@end
