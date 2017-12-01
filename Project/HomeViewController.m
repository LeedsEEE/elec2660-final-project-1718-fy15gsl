//
//  ViewController.m
//  Project
//
//  Created by Guido Longo Figueroa [fy15gsl] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.data = [[DataModel alloc] init];
    self.suggestions = [[Suggestions alloc] init];
    
    NSLog(@" mealsScoresArray = %@", self.suggestions.mealsScores); // to check the values inside the array and that the class works
    
    self.proteinPicker.delegate = self;
    self.proteinPicker.dataSource = self;
    
    self.carbPicker.delegate = self;
    self.carbPicker.dataSource = self;
    
    self.vegPicker.delegate = self;
    self.vegPicker.dataSource = self;
    
    self.dairyPicker.delegate = self;
    self.dairyPicker.dataSource = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)goButton:(UIButton *)sender {
    
}
#pragma mark Picker View Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{
        /*NSString *number = [NSString stringWithFormat: @"%ld", row];*/
    if (pickerView.tag == 1){ //labels for protein picker
        NSString *label = [self.data.meatOptionsArray objectAtIndex:row];
        return label;
    }else if (pickerView.tag ==2){ // labels for carbs picker
        NSString *label = [self.data.carbOptionsArray objectAtIndex:row];
        return label;
    }else if (pickerView.tag == 3){ // labels for veg and fruit picker
        NSString *label = [self.data.vegfruitOptionsArray objectAtIndex:row];
        return label;
    }else{                          // labels for dairy picker
        NSString *label = [self.data.dairyOptionsArray objectAtIndex:row];
        return label;
    }
    
}

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component{
    NSInteger selectedProteinRow = [self.proteinPicker selectedRowInComponent:0];
    self.suggestions.selectedProtein = [self.data.meatOptionsArray objectAtIndex:selectedProteinRow];
    NSLog(@"protein selection: %@", self.suggestions.selectedProtein); // to check that the correct selection is stored in the variable
    
    NSInteger selectedCarbRow = [self.carbPicker selectedRowInComponent:0];
    self.suggestions.selectedCarbohydrate = [self.data.carbOptionsArray objectAtIndex:selectedCarbRow];
    NSLog(@"carb selection: %@", self.suggestions.selectedCarbohydrate);
    
    NSInteger selectedVegRow = [self.vegPicker selectedRowInComponent:0];
    self.suggestions.selectedVegFruit = [self.data.vegfruitOptionsArray objectAtIndex:selectedVegRow];
    NSLog(@"veg and fruit selection: %@", self.suggestions.selectedVegFruit);
    
    NSInteger selectedDairyRow = [self.dairyPicker selectedRowInComponent:0];
    self.suggestions.selectedDairy = [self.data.dairyOptionsArray objectAtIndex:selectedDairyRow];
    NSLog(@"dairy selection: %@", self.suggestions.selectedDairy);
}
#pragma mark Pricker View Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    NSInteger numRowsP;
    NSInteger numRowsC;
    NSInteger numRowsV;
    NSInteger numRowsD;
    if (pickerView.tag == 1){ //rows in protein picker
        numRowsP = self.data.meatOptionsArray.count;
        return numRowsP;
    }else if (pickerView.tag == 2){ //rows in carbs picker
        numRowsC = self.data.carbOptionsArray.count;
        return numRowsC;
    }else if (pickerView.tag == 3){ //rows in veg and fruit picker
        numRowsV = self.data.vegfruitOptionsArray.count;
        return numRowsV;
    }else{                         // rows in dairy picker
        numRowsD = self.data.dairyOptionsArray.count;
        return numRowsD;
    }
    
}
@end
