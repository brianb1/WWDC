//
//  NSImage+CGImage.m
//  WWDC
//
//  Created by Guilherme Rambo on 21/09/15.
//  Copyright © 2015 Guilherme Rambo. All rights reserved.
//

#import "NSImage+CGImage.h"

@implementation NSImage (CGImage)

- (CGImageRef)CGImage
{
    CGImageSourceRef source = CGImageSourceCreateWithData((CFDataRef)[self TIFFRepresentation], NULL);
    
    return CGImageSourceCreateImageAtIndex(source, 1, NULL);
}

@end
