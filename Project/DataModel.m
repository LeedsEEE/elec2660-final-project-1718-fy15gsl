//
//  DataModel.m
//  Project
//
//  Created by Guido Longo Figueroa [fy15gsl] on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.meatOptionsArray = [NSMutableArray array];
        _meatOptionsArray = ["Prawns","Salami", "Pork", "Beef", "Chicken", "Eggs", "Salmon","Minced Beef", "none"];
    }
    return self;
}
@end
