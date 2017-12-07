//
//  ViewController2.m
//  Project
//
//  Created by Guido Longo Figueroa [fy15gsl] on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.chosenMealIngredients.text = self.chosenSuggestion.ingredients;
    self.chosenMealInstructions.text = self.chosenSuggestion.instructions;
    
    self.chosenMealPhoto.image = self.chosenSuggestion.photo;
    
    
    //self.chosenMealInstructions.numberOfLines = 0;
    //self.chosenMealInstructions.lineBreakMode = NSLineBreakByWordWrapping;
    /*NSString *text = self.chosenSuggestion.instructions;
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGSize constrainSize = CGSizeMake(width, MAXFLOAT);
    UIFont *suggestionFont;
    CGRect requiredFrame = [text boundingRectWithSize: constrainSize options:NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:suggestionFont} context:nil];
    CGRect oldFrame = self.chosenMealInstructions.frame;
    self.chosenMealInstructions.frame = CGRectMake(oldFrame.origin.x, oldFrame.origin.y, requiredFrame.size.width, requiredFrame.size.height);*/
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
