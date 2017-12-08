//
//  ViewController.h
//  Project
//
//  Created by Guido Longo Figueroa [fy15gsl] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
#import "Suggestions.h"
#import "ViewController1.h"


@interface HomeViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
//Home View
@property (weak, nonatomic) IBOutlet UIPickerView *proteinPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *carbPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *vegPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *dairyPicker;
@property (weak, nonatomic) IBOutlet UIButton *button;


@property (strong, nonatomic) DataModel *data;
@property (strong, nonatomic) Suggestions *suggestions;
@property (strong, nonatomic) Module *Suggestion1;
@property (strong, nonatomic) Module *Suggestion2;
@property (strong, nonatomic) Module *Suggestion3;

@property NSInteger selectedProteinRow;
@property NSInteger selectedCarbRow;
@property NSInteger selectedVegRow;
@property NSInteger selectedDairyRow;

//y

- (IBAction)goButton:(UIButton *)sender;



@end

