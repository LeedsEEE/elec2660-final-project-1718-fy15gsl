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
        self.data = [[DataModel alloc] init];
        
        //NSInteger mealScore;
        NSInteger meal1Score = 0;
        NSInteger meal2Score = 0 ;
        NSInteger meal3Score = 0;
        NSInteger meal4Score = 0;
        NSInteger meal5Score= 0;
        NSInteger meal6Score= 0;
        NSInteger meal7Score= 0;
        NSInteger meal8Score= 0;
        NSInteger meal9Score= 0;
        NSInteger meal10Score= 0;
        NSInteger meal11Score= 0;
        NSInteger meal12Score= 0;
        NSInteger meal13Score= 0;
        NSInteger meal14Score= 0;
        NSInteger meal15Score= 0;
        NSInteger meal16Score= 0;
        NSInteger meal17Score= 0;
        NSInteger meal18Score= 0;
        NSInteger meal19Score= 0;
        NSInteger meal20Score= 0;
        NSInteger meal21Score= 0;
        NSInteger meal22Score= 0;
        NSInteger meal23Score= 0;
        NSInteger meal24Score= 0;
        NSInteger meal25Score= 0 ;
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
        [self.mealsScores addObject: @(meal5Score)];
        [self.mealsScores addObject: @(meal6Score)];
        [self.mealsScores addObject: @(meal7Score)];
        [self.mealsScores addObject: @(meal8Score)];
        [self.mealsScores addObject: @(meal9Score)];
        [self.mealsScores addObject: @(meal10Score)];
        [self.mealsScores addObject: @(meal11Score)]; // index 10
        [self.mealsScores addObject: @(meal12Score)];
        [self.mealsScores addObject: @(meal13Score)];
        [self.mealsScores addObject: @(meal14Score)];
        [self.mealsScores addObject: @(meal15Score)];
        [self.mealsScores addObject: @(meal16Score)];
        [self.mealsScores addObject: @(meal17Score)];
        [self.mealsScores addObject: @(meal18Score)];
        [self.mealsScores addObject: @(meal19Score)];
        [self.mealsScores addObject: @(meal20Score)];
        [self.mealsScores addObject: @(meal21Score)]; // index 20
        [self.mealsScores addObject: @(meal22Score)];
        [self.mealsScores addObject: @(meal23Score)];
        [self.mealsScores addObject: @(meal24Score)];
        [self.mealsScores addObject: @(meal25Score)]; // index 24
        
        self.suggestionsArray = [NSMutableArray array];
        self.suggestion1 = [[Module alloc] init];
        self.suggestion2 = [[Module alloc] init];
        self.suggestion3 = [[Module alloc] init];
        
    }
    return self;
}
- (NSMutableArray *) getSuggestions { // this assings a score to each meal based on the selected ingredients and then insert them to the mealsScores array
    for (int i = 0; i <= 24 ; i++) {
        Module *mealX = [[Module alloc] init];
        mealX = [self.data.mealsArray objectAtIndex:(i)];
        int mealScore = 0;
        if (self.selectedProtein == mealX.protein){
            mealScore += 3; // greater importance
        }
        if (self.selectedCarbohydrate == mealX.carbohydrate) {
            mealScore += 2; //second greatest
        }
        if (self.selectedVegFruit == mealX.vegfruit) {
            mealScore += 1;
        }
        if (self.selectedDairy == mealX.dairy) {
            mealScore += 1;
        }
        
        [self.mealsScores replaceObjectAtIndex:i withObject: [NSNumber numberWithInteger:(mealScore)]];
    }
    [self assignScore];
    return self.suggestionsArray;
}

- (NSMutableArray *) assignScore {
    while (1 == 1) {
        int check = 0;
        for (int i = 0; i <= 23 ; i++) {
            NSInteger numL = [[self.mealsScores objectAtIndex:(i)] integerValue];
            NSInteger numR = [[self.mealsScores objectAtIndex:(i + 1)] integerValue];
            Module *mealL = [[Module alloc] init];
            Module *mealR = [[Module alloc] init];
            if (numL < numR) {
                [self.mealsScores replaceObjectAtIndex:(i) withObject:[NSNumber numberWithInteger:numR]];
                [self.mealsScores replaceObjectAtIndex:(i+1) withObject:[NSNumber numberWithInteger:numL]];
                mealL = [self.data.mealsArray objectAtIndex:(i)];
                mealR = [self.data.mealsArray objectAtIndex:(i +1)];
                [self.data.mealsArray replaceObjectAtIndex:(i) withObject:mealR];
                [self.data.mealsArray replaceObjectAtIndex:(i+1) withObject:mealL];
            }else {
                check ++;
            }
        }
        if (check == 24) {
            break;
        }
    }
    self.suggestion1 = [self.data.mealsArray objectAtIndex:(0)];
    self.suggestion2 = [self.data.mealsArray objectAtIndex:(1)];
    self.suggestion3 = [self.data.mealsArray objectAtIndex:(2)];
    
    [self.suggestionsArray addObject:self.suggestion1];  // index 0
    [self.suggestionsArray addObject:self.suggestion2];
    [self.suggestionsArray addObject:self.suggestion3];  // index 2
    
    return self.suggestionsArray;
}

/*- (void) suggestionsTest: (id)object returnBlock:(void (^) (id returnSuggestion1, id returnSuggestion2, id returnSuggestion3))returnBlock{
    
}*/
    


@end
