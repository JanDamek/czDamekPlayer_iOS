//
//  czDamekPlayer.h
//  czDamekPlayer
//
//  Created by Jan Damek on 21.09.13.
//  Copyright (c) 2013 Asseco Solutions, a.s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "comPlayer.h"

@interface czDamekPlayer : NSObject <comPlayerDelegate>{
    comPlayer* _player;
    NSString* _meta;
}

-(id)init;

-(void)streamPlay:(NSString*)urlStream;
-(void)play;
-(void)stop;
-(NSString*)meta;
-(bool)isPlaying;

@end

int fakeLoader (int val);