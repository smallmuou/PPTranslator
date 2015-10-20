//
//  PPTranslator.m
//  PPTranslator
//
//  Created by Pawpaw on 10/20/15.
//  Copyright © 2015 Pawpaw. All rights reserved.
//

#import "PPTranslator.h"

@implementation NSString (PPTranslator)

- (NSString* )translatorToPinYinFirstAscii {
    NSUInteger length = self.length;
    NSMutableString* string = [NSMutableString string];
    NSDictionary* mapper = [PPTranslator defaultTranslator].pinyinMapper;
    NSRange range;
    range.length = 1;
    range.location = 0;
    
    while (range.location < length) {
        NSString* src = [self substringWithRange:range];
        NSString* dst = mapper[src];
        dst = dst?dst:src;
        [string appendString:dst];
        range.location ++;
    }

    return string;
}

@end

@interface PPTranslator ()

@end

@implementation PPTranslator

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

+ (instancetype)defaultTranslator {
    static PPTranslator* translator;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        translator = [[self alloc] init];
    });
    
    return translator;
}

- (void)setup {
    NSString* file = [[NSBundle mainBundle] pathForResource:@"PPPinyin" ofType:@"plist"];
    self.pinyinMapper = [NSDictionary dictionaryWithContentsOfFile:file];
}
@end


