//
//  Course.m
//  
//
//  Created by Ehsan Jahromi on 5/18/15.
//
//

#import "Course.h"


@implementation Course

@dynamic title;
@dynamic author;
@dynamic releaseDate;

-(void)awakeFromInsert{
    [super awakeFromInsert];
    self.releaseDate = [NSDate date];
}

@end
