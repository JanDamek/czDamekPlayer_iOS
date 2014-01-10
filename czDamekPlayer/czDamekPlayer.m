//
//  czDamekPlayer.m
//  czDamekPlayer
//
//  Created by Jan Damek on 21.09.13.
//  Copyright (c) 2013 Asseco Solutions, a.s. All rights reserved.
//

#import "czDamekPlayer.h"

@implementation czDamekPlayer

-(id)init{
    self = [super init];
    _player = [[comPlayer alloc]init];
    [_player setDelegate:self];
    _meta = @"";
    return self;
}

-(void)streamPlay:(NSString*)urlStream
{
    [_player setStreamURL:urlStream];
}

-(void)play{
    [_player play];
}

-(void)stop{
    [_player stop];
}

-(NSString *)meta{
    return _meta;
}


-(void)metaData:(comPlayer *)player meta:(NSString *)meta{
    _meta = [meta copy];
}

-(bool)isPlaying{
    return _player.isPlaying;
}

@end

int fakeLoader (int val) {
    return ( val + 1 );
}