//
//  AlgorithmClass.m
//  Project
//
//  Created by Guido Longo Figueroa [fy15gsl] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "Suggestions.h"

@implementation Suggestions

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger meal1Score;
        NSInteger meal2Score;
        NSInteger meal3Score;
        NSInteger meal4Score;
        /*NSInteger meal5Score;
        NSInteger meal6Score;
        NSInteger meal7Score;
        NSInteger meal8Score;
        NSInteger meal9Score;
        NSInteger meal10Score;
        NSInteger meal11Score;
        NSInteger meal12Score;
        NSInteger meal13Score;
        NSInteger meal14Score;
        NSInteger meal15Score;
        NSInteger meal16Score;
        NSInteger meal17Score;
        NSInteger meal18Score;
        NSInteger meal19Score;
        NSInteger meal20Score;
        NSInteger meal21Score;
        NSInteger meal22Score;
        NSInteger meal23Score;
        NSInteger meal24Score;
        NSInteger meal25Score;*/
        /*self.mealsScores = [NSArray arrayWithObjects: @(meal1Score), // index 0
                            @(meal2Score), // index 1
                            @(meal3Score), //index 2
                            @(meal4Score), //index 3
                            nil];*/
        self.mealsScores = [NSMutableArray array];
        [self.mealsScores addObject: @(meal1Score)]; //index 0
        [self.mealsScores addObject: @(meal2Score)];
        [self.mealsScores addObject: @(meal3Score)];
        [self.mealsScores addObject: @(meal4Score)]; //index 3
        
        for (int i = 0; i <= 3 ; i++) {
            /*if (i ==0){  // meal1
                
            }*/
            
            [self.mealsScores replaceObjectAtIndex:i withObject: @(3)];
            
        }
    }
    return self;
}


@end
