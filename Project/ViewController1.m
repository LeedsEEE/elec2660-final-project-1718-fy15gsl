//
//  1stViewController.m
//  Project
//
//  Created by Guido Longo Figueroa [fy15gsl] on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // need new method
    self.suggestion = [[Suggestions alloc] init];
    //self.Suggestion1 = [[Module alloc] init];
    //self.Suggestion2 = [[Module alloc] init];
    //self.Suggestion3 = [[Module alloc] init];
    
    /*[self.suggestion getSuggestions];
    self.Suggestion1 = [self.suggestion.suggestionsArray objectAtIndex:(0)];
    self.Suggestion2 = [self.suggestion.suggestionsArray objectAtIndex:(1)];
    self.Suggestion3 = [self.suggestion.suggestionsArray objectAtIndex:(2)];*/
    
    self.suggestion1Title.text = self.suggestionModule1.title;
    self.suggestion2Title.text = self.suggestionModule2.title;
    self.suggestion3Title.text = self.suggestionModule3.title;
    
    self.suggestion1Photo.image = self.suggestionModule1.photo;
    self.suggestion2Photo.image = self.suggestionModule2.photo;
    self.suggestion3Photo.image = self.suggestionModule3.photo;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([[segue identifier] isEqualToString:@"Suggestion1"]) {
        ViewController2 *destination = [segue destinationViewController];
        Module *tempModule = self.suggestionModule1;
        destination.chosenSuggestion = tempModule;
        
    }else if ([[segue identifier] isEqualToString:@"Suggestion2"]){
        ViewController2 *destination = [segue destinationViewController];
        Module *tempModule = self.suggestionModule2;
        destination.chosenSuggestion = tempModule;
        
    }else if ([[segue identifier] isEqualToString:@"Suggestion3"]){
        ViewController2 *destination = [segue destinationViewController];
        Module *tempModule = self.suggestionModule3;
        destination.chosenSuggestion = tempModule;
        
    }
    
}


@end
