//
//  DataModel.h
//  Project
//
//  Created by Guido Longo Figueroa [fy15gsl] on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Module.h"

@interface DataModel : NSObject

@property (strong, nonatomic) NSMutableArray *mealsArray;
@property (strong, nonatomic) NSMutableArray *meatOptionsArray;
@property (strong, nonatomic) NSMutableArray *carbOptionsArray;
@property (strong, nonatomic) NSMutableArray *vegfruitOptionsArray;
@property (strong, nonatomic) NSMutableArray *dairyOptionsArray;


@end
