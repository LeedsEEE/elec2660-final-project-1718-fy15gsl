//
//  Module.h
//  Project
//
//  Created by Guido Longo Figueroa [fy15gsl] on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Module : NSObject

//@property (strong, nonatomic) NSADDIMAGE_OPTION_MATCH_FILENAME_BY_INSTALLNAME *photo;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *ingredients;
@property (strong, nonatomic) NSString *instructions;
@property (strong, nonatomic) NSString *protein;
@property (strong, nonatomic) NSString *carbohydrate;
@property (strong, nonatomic) NSString *vegfruit;
@property (strong, nonatomic) NSString *dairy;
//these are the properties that each meal share

@end
