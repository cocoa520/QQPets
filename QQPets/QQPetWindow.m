//
//  QQPetWindow.m
//  QQPets
//
//  Created by shyee on 14-8-24.
//  Copyright (c) 2014年 Mac4app. All rights reserved.
//

#import "QQPetWindow.h"

@implementation QQPetWindow
@synthesize initialLocation;

- (id)initWithContentRect:(NSRect)contentRect
                styleMask:(NSUInteger)aStyle
                  backing:(NSBackingStoreType)bufferingType
                    defer:(BOOL)flag {
    
    self = [super initWithContentRect:contentRect styleMask:NSBorderlessWindowMask backing:NSBackingStoreBuffered defer:NO];
    if (self != nil) {
        [self setAlphaValue:1.0];
        [self setOpaque:NO];
        [self setLevel:NSScreenSaverWindowLevel];
        
    }
    return self;
}

- (BOOL)canBecomeKeyWindow {
    
    return YES;
}

- (void)mouseDown:(NSEvent *)theEvent {
    self.initialLocation = [theEvent locationInWindow];
}

- (void)mouseDragged:(NSEvent *)theEvent {
    
    NSRect screenVisibleFrame = [[NSScreen mainScreen] visibleFrame];
    NSRect windowFrame = [self frame];
    NSPoint newOrigin = windowFrame.origin;
    
    NSPoint currentLocation = [theEvent locationInWindow];
    newOrigin.x += (currentLocation.x - initialLocation.x);
    newOrigin.y += (currentLocation.y - initialLocation.y);
    
    if ((newOrigin.y + windowFrame.size.height) > (screenVisibleFrame.origin.y + screenVisibleFrame.size.height)) {
        newOrigin.y = screenVisibleFrame.origin.y + (screenVisibleFrame.size.height - windowFrame.size.height);
    }
    
    [self setFrameOrigin:newOrigin];
}

@end
