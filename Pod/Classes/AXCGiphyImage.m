//
//  AXCGiphyImage.m
//  AXCGiphy
//
//  Created by alexchoi on 8/18/14.
//  Copyright (c) 2014 Alex Choi. All rights reserved.
//

#import "AXCGiphyImage.h"
@interface AXCGiphyImage ()
@property (strong, readwrite, nonatomic) NSURL * url;
@property (assign, readwrite, nonatomic) CGFloat width;
@property (assign, readwrite, nonatomic) CGFloat height;
@property (assign, readwrite, nonatomic) NSUInteger filesize;
@end

@implementation AXCGiphyImage

- (instancetype) initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.url = [NSURL URLWithString:dictionary[@"url"]];
    self.width = [dictionary[@"width"] floatValue];
    self.height = [dictionary[@"height"] floatValue];
	self.filesize = [dictionary[@"size"]integerValue];
    
    return self;
}

@end
