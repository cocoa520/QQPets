//
//  QQPetView.h
//  QQPets
//
//  Created by shyee on 14-8-24.
//  Copyright (c) 2014年 Mac4app. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface QQPetView : NSView{
    NSImage *_petImage;
}
@property (retain) NSImage *petImage;
@end

