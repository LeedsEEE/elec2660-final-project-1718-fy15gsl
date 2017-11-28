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
        return @"1";
    }else if (pickerView.tag ==2){ // labels for carbs picker
        return @"2";
    }else if (pickerView.tag == 3){ // labels for veg and fruit picker
        return @"3";
    }else{                          // labels for dairy picker
        return @"4";
    }
    
}

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component{
    
}
#pragma mark Pricker View Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (pickerView.tag == 1){ //rows in protein picker
        return 10;
    }else if (pickerView.tag == 2){ //rows in carbs picker
        return 9;
    }else if (pickerView.tag == 3){ //rows in veg and fruit picker
        return 12;
    }else{                         // rows in dairy picker
        return 5;
    }
    
}
@end
