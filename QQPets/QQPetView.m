//
//  QQPetView.m
//  QQPets
//
//  Created by shyee on 14-8-24.
//  Copyright (c) 2014年 Mac4app. All rights reserved.
//

#import "QQPetView.h"

@implementation QQPetView
@synthesize petImage = _petImage;

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc {
    
    [_petImage release];
    [super dealloc];
}

- (void)awakeFromNib {
    self.petImage = [NSImage imageNamed:@"qqpet"];
}

- (void)drawRect:(NSRect)dirtyRect
{
    [[NSColor clearColor] set];
    NSRectFill([self frame]);
    
    [_petImage drawAtPoint:NSZeroPoint 
                  fromRect:NSZeroRect 
                 operation:NSCompositeSourceOver 
                  fraction:1.0];
}


@end
