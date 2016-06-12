//
//  Convert.h
//  SmartZawgyi
//
//  Created by Khant Thu Linn on 25/5/16.
//  Copyright © 2016 K&Y. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Convert : NSObject

/**
 *  For keyboard extension, init with this method. For other, just [[Convert alloc] init]
 */

- (Convert *)initWithAddTextBlock:(void (^)(NSString *str))addText andDeleteText:(void (^)(void))deleteText;

/**
 *  For keyboard extension, use this method to convert.
 */
- (void)convertExistingText:(NSString *)input withInputCharacter:(unichar)character;


- (NSString *)convertExistingString:(NSString *)input withInputCharacter:(unichar)character;

@end
