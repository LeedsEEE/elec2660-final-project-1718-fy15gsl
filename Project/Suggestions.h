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

@property NSString *selectedProtein;
@property NSString *selectedCarbohydrate;
@property NSString *selectedVegFruit;
@property NSString *selectedDairy;

@property NSObject *suggestion1;  // personal note: could use arrays as alternative
@property NSObject *suggestion2;
@property NSObject *suggestion3;

@property (strong, nonatomic) NSMutableArray *mealsScores;


@end
