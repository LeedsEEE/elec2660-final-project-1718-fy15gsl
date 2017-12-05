//
//  AlgorithmClass.h
//  Project
//
//  Created by Guido Longo Figueroa [fy15gsl] on 01/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataModel.h"
#import <UIKit/UIKit.h>

@interface Suggestions : NSObject

@property NSInteger selectedProtein;
@property NSInteger selectedCarbohydrate;
@property NSInteger selectedVegFruit;
@property NSInteger selectedDairy;

@property NSObject *suggestion1;  // personal note: could use arrays as alternative
@property NSObject *suggestion2;
@property NSObject *suggestion3;

@property (strong, nonatomic) NSMutableArray *mealsScores;

@property (strong, nonatomic) DataModel *data;

- (NSMutableArray*) getSuggestions;
- (void) assignScore;

@end
