//
//  PPTranslator.h
//  PPTranslator
//
//  Created by Pawpaw on 10/20/15.
//  Copyright © 2015 Pawpaw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (PPTranslator)

- (NSString* )translatorToPinYinFirstAscii;

@end

@interface PPTranslator : NSObject

+ (instancetype)defaultTranslator;

@property (nonatomic, strong) NSDictionary* pinyinMapper;

@end