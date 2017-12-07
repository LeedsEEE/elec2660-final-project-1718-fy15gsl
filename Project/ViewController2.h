//
//  ViewController2.h
//  Project
//
//  Created by Guido Longo Figueroa [fy15gsl] on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Module.h"

@interface ViewController2 : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *chosenMealIngredients;
@property (weak, nonatomic) IBOutlet UILabel *chosenMealInstructions;

@property (strong, nonatomic) Module *chosenSuggestion;


@end
