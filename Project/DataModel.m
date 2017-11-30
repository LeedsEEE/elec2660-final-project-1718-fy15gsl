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
        self.meatOptionsArray = [[NSMutableArray alloc] init];
        [self.meatOptionsArray addObject: @"Prawns"]; //index 0
        [self.meatOptionsArray addObject: @"Salami"];
        [self.meatOptionsArray addObject: @"Pork"];
        [self.meatOptionsArray addObject: @"Beef"];
        [self.meatOptionsArray addObject: @"Chicken"];
        [self.meatOptionsArray addObject: @"Eggs"];
        [self.meatOptionsArray addObject: @"Salmon"];
        [self.meatOptionsArray addObject: @"Minced Beef"];
        [self.meatOptionsArray addObject: @"none"];  //index 8
        
        self.carbOptionsArray = [[NSMutableArray alloc] init];
        [self.carbOptionsArray addObject: @"Rice"];  //index 0
        [self.carbOptionsArray addObject: @"Spaguetti/Pasta"];
        [self.carbOptionsArray addObject: @"Bread"];
        [self.carbOptionsArray addObject: @"Quinoa"];
        [self.carbOptionsArray addObject: @"Noodles"];
        [self.carbOptionsArray addObject: @"Flour"];
        [self.carbOptionsArray addObject: @"Breadcrums"];
        [self.carbOptionsArray addObject: @"none"];   //index 7
        
        self.vegfruitOptionsArray = [[NSMutableArray alloc] init];
        [self.vegfruitOptionsArray addObject: @"Pineapple"];  //index 0
        [self.vegfruitOptionsArray addObject: @"Tomatoes"];
        [self.vegfruitOptionsArray addObject: @"Peppers"];
        [self.vegfruitOptionsArray addObject: @"Watercress"];
        [self.vegfruitOptionsArray addObject: @"Mushrooms"];
        [self.vegfruitOptionsArray addObject: @"Coriander"];
        [self.vegfruitOptionsArray addObject: @"Onions"];
        [self.vegfruitOptionsArray addObject: @"Peas"];
        [self.vegfruitOptionsArray addObject: @"Mixed Vegetables"];
        [self.vegfruitOptionsArray addObject: @"Strawberries"];
        [self.vegfruitOptionsArray addObject: @"Gooseberries"];
        [self.vegfruitOptionsArray addObject: @"Potatoes"];
        [self.vegfruitOptionsArray addObject: @"Spinach"];
        [self.vegfruitOptionsArray addObject: @"Lettuce"];
        [self.vegfruitOptionsArray addObject: @"Lemons"];
        [self.vegfruitOptionsArray addObject: @"none"];      //index 15
        
        self.dairyOptionsArray = [[NSMutableArray alloc] init];
        [self.dairyOptionsArray addObject: @"Cheese"];    //index 0
        [self.dairyOptionsArray addObject: @"Milk"];
        [self.dairyOptionsArray addObject: @"Butter"];
        [self.dairyOptionsArray addObject: @"Cream"];
        [self.dairyOptionsArray addObject: @"Condensed Milk"];
        [self.dairyOptionsArray addObject: @"Soured Cream"];
        [self.dairyOptionsArray addObject: @"none"];     //index 6
    }
    return self;
}
@end
