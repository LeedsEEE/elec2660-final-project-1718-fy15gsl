//
//  Module.h
//  Project
//
//  Created by Guido Longo Figueroa [fy15gsl] on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Module : NSObject

@property (strong, nonatomic) UIImage *photo;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *ingredients;
@property (strong, nonatomic) NSString *instructions;
@property (nonatomic) NSInteger protein;
@property (nonatomic) NSInteger carbohydrate;
@property (nonatomic) NSInteger vegfruit;
@property (nonatomic) NSInteger dairy;
//these are the properties that each meal share

@end
