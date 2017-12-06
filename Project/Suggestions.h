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

@property Module *suggestion1;
@property Module *suggestion2;
@property Module *suggestion3;

@property (strong, nonatomic) NSMutableArray *mealsScores;
@property (strong, nonatomic) NSMutableArray *suggestionsArray;

@property (strong, nonatomic) DataModel *data;

- (NSMutableArray*) getSuggestions;
- (NSMutableArray*) assignScore; // change to ns array later
// - (void) suggestionsTest;

@end
