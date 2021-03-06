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
    /*self.suggestions = [[Suggestions alloc] init];
    self.Suggestion1 = [[Module alloc] init];
    self.Suggestion2 = [[Module alloc] init];
    self.Suggestion3 = [[Module alloc] init];*/
    
    //NSLog(@" mealsScoresArray = %@", self.suggestions.mealsScores); // to check the values inside the array and that the class works
    
    self.proteinPicker.delegate = self;
    self.proteinPicker.dataSource = self;
    
    self.carbPicker.delegate = self;
    self.carbPicker.dataSource = self;
    
    self.vegPicker.delegate = self;
    self.vegPicker.dataSource = self;
    
    self.dairyPicker.delegate = self;
    self.dairyPicker.dataSource = self;
    
    self.button.layer.borderWidth = 3.0f;
    self.button.layer.borderColor = [UIColor whiteColor].CGColor;
    self.button.layer.cornerRadius = 14.0f;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*- (IBAction)goButton:(UIButton *)sender {
    [self.suggestions getSuggestions];
    //NSLog(@"Array= %@", self.suggestions.mealsScores);
    self.Suggestion1 = [self.suggestions.suggestionsArray objectAtIndex:(0)];
    self.Suggestion2 = [self.suggestions.suggestionsArray objectAtIndex:(1)];
    self.Suggestion3 = [self.suggestions.suggestionsArray objectAtIndex:(2)];
    NSLog(@"Suggestion 1: %@", self.Suggestion1.title);
}
*/

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
    self.selectedProteinRow = [self.proteinPicker selectedRowInComponent:0];
    //self.suggestions.selectedProtein = selectedProteinRow +1;
    //NSLog(@"protein selection: %@", [self.data.meatOptionsArray objectAtIndex:self.selectedProteinRow]); // to check that the correct selection is stored in the variable
    
    
    self.selectedCarbRow = [self.carbPicker selectedRowInComponent:0]; // to set the carb selection
    //self.suggestions.selectedCarbohydrate = selectedCarbRow +1;
    //NSLog(@"carb selection: %@", [self.data.carbOptionsArray objectAtIndex:self.selectedCarbRow]);
   // NSLog(@"carb num: %ld", self.suggestions.selectedCarbohydrate);
    
    
    self.selectedVegRow = [self.vegPicker selectedRowInComponent:0]; //sets the Veg selection
    //self.suggestions.selectedVegFruit = selectedVegRow +1;
    //NSLog(@"veg and fruit selection: %@", [self.data.vegfruitOptionsArray objectAtIndex:self.selectedVegRow]);
    //NSLog(@"veg num: %ld", self.suggestions.selectedVegFruit);
    
    
    self.selectedDairyRow = [self.dairyPicker selectedRowInComponent:0]; //sets the dairy selection
    //self.suggestions.selectedDairy = selectedDairyRow +1;
   // NSLog(@"dairy selection: %@", [self.data.dairyOptionsArray objectAtIndex:self.selectedDairyRow]);
    //NSLog(@"dairy num: %ld", self.suggestions.selectedDairy);
    
    //NSLog(@" mealsScoresArray = %@", self.suggestions.mealsScores);
    /*[self.suggestions getSuggestions];
    //NSLog(@"Array= %@", self.suggestions.mealsScores);
    self.Suggestion1 = [self.suggestions.suggestionsArray objectAtIndex:(0)];
    self.Suggestion2 = [self.suggestions.suggestionsArray objectAtIndex:(1)];
    self.Suggestion3 = [self.suggestions.suggestionsArray objectAtIndex:(2)];*/
    
    
}
- (IBAction)goButton:(UIButton *)sender {
    self.suggestions = [[Suggestions alloc] init];
    self.Suggestion1 = [[Module alloc] init];
    self.Suggestion2 = [[Module alloc] init];
    self.Suggestion3 = [[Module alloc] init];
    
    self.suggestions.selectedProtein = self.selectedProteinRow +1;
    self.suggestions.selectedCarbohydrate = self.selectedCarbRow +1;
    self.suggestions.selectedVegFruit = self.selectedVegRow +1;
    self.suggestions.selectedDairy = self.selectedDairyRow +1;

    [self.suggestions getSuggestions];
    //NSLog(@"Array= %@", self.suggestions.mealsScores);
    self.Suggestion1 = [self.suggestions.suggestionsArray objectAtIndex:(0)];
    self.Suggestion2 = [self.suggestions.suggestionsArray objectAtIndex:(1)];
    self.Suggestion3 = [self.suggestions.suggestionsArray objectAtIndex:(2)];
    NSLog(@"Suggestion 1: %@", self.Suggestion1.title);
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
/*- (void) getSuggestions:(NSInteger*)buffer range:(NSRange)inRange {
    
}*/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([[segue identifier] isEqualToString:@"GetSuggestions"]){
        ViewController1 *destination = [segue destinationViewController];
        Module *tempSuggestion1 = self.Suggestion1;
        Module *tempSuggestion2 = self.Suggestion2;
        Module *tempSuggestion3 = self.Suggestion3;
        destination.suggestionModule1 = tempSuggestion1;
        destination.suggestionModule2 = tempSuggestion2;
        destination.suggestionModule3 = tempSuggestion3;
        
    }
}


@end
