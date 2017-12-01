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

@interface HomeViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *proteinPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *carbPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *vegPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *dairyPicker;

@property (strong, nonatomic) DataModel *data;
@property (strong, nonatomic) Suggestions *suggestions;


- (IBAction)goButton:(UIButton *)sender;


@end

