//
//  1stViewController.h
//  Project
//
//  Created by Guido Longo Figueroa [fy15gsl] on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
#import "Suggestions.h"
#import "Module.h"
#import "ViewController2.h"


@interface ViewController1 : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *suggestion1Title;
@property (weak, nonatomic) IBOutlet UILabel *suggestion2Title;
@property (weak, nonatomic) IBOutlet UILabel *suggestion3Title;

@property (weak, nonatomic) IBOutlet UIImageView *suggestion1Photo;
@property (weak, nonatomic) IBOutlet UIImageView *suggestion2Photo;
@property (weak, nonatomic) IBOutlet UIImageView *suggestion3Photo;

@property (weak, nonatomic) IBOutlet UILabel *chooseOne;

@property (strong, nonatomic) Suggestions *suggestion;
@property (strong, nonatomic) Module *suggestionModule1;
@property (strong, nonatomic) Module *suggestionModule2;
@property (strong, nonatomic) Module *suggestionModule3;


@end
