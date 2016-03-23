//
//  ADSheet.m
//  AcmeDopeSheet
//
//  Created by andrew hazlett on 3/22/16.
//  Copyright © 2016 andrew hazlett. All rights reserved.
//

#import "ADSheet.h"

@implementation ADSheet
@synthesize error;
-(void) ADSinitFrame{
    if(error == YES) NSLog(@"ADSinitFrame");
}
-(void) ADSSetFrame:(int)frameVaule{
    if(error == YES) NSLog(@"ADSSetFrame:%d",frameVaule);
}
-(void) ADSSetTime:(int)timeVaule{
    if(error == YES) NSLog(@"ADSSetTime:%d",timeVaule);
}
-(void) ADSSetActionVaule:(NSString*)actionString  forFrame:(int)frameVaule{
    if(error == YES) NSLog(@"ADSSetActionVaule:%@ forFrame:%d",actionString,frameVaule);
}
-(void) ADSSetActionDataVaule:(NSArray*)actionArray forFrame:(int)frameVaule{
    if(error == YES) NSLog(@"ADSSetActionDataVaule:%@ forFrame:%d",actionArray,frameVaule);
}
-(void) ADSRemoveFrame:(int)frameVaule{
    if(error == YES) NSLog(@"ADSRemoveFrame:%d",frameVaule);
}
-(void) ADSSetKeyFrame:(BOOL)keyFrame forFrame:(int)frameVaule{
    if(error == YES) NSLog(@"ADSSetKeyFrame:%d",frameVaule);
}
-(int) ADSgetFrameFromTime:(int)frameVaule{
    if(error == YES) NSLog(@"ADSgetFrameFromTime:%d",frameVaule);
    return 0;
}
-(int) ADSgetTimeFromFrame:(int)frameVaule{
    if(error == YES) NSLog(@"ADSgetTimeFromFrame:%d",frameVaule);
    return 0;
}
-(int) ADSgetFrameVaules:(int) frameVaule{
    if(error == YES) NSLog(@"ADSgetFrameVaules:%d",frameVaule);
    return 0;
}
-(NSString*)ADSgetActionVaule:(int) frameVaule{
    if(error == YES) NSLog(@"ADSgetActionVaule:%d",frameVaule);
    return NULL;
}
-(BOOL)ADSgetKeyFrameForVaule:(int) frameVaule{
    if(error == YES) NSLog(@"ADSgetKeyFrameForVaule:%d",frameVaule);
    return YES;
}
-(NSArray*)ADSgetActionKeys:(int) frameVaule{
    if(error == YES) NSLog(@"ADSgetActionKeys:%d",frameVaule);
    return NULL;
}
-(NSArray*) ADSgetActionDataVaule:(int) frameVaule{
    if(error == YES) NSLog(@"ADSgetActionDataVaule:%d",frameVaule);
    return NULL;
}
//
#pragma mark - set updata array
-(NSArray*)getFrame:(int)DPFrame Time:(int)DPTime {
    NSMutableArray *tempAry = [[NSMutableArray alloc]init];
    NSMutableDictionary *tempDir = [[NSMutableDictionary alloc]initWithDictionary:[self getDefault]];
    [tempDir setObject:[NSNumber numberWithInt:DPFrame] forKey:@"Frame"];
    [tempDir setObject:[NSNumber numberWithInt:DPTime] forKey:@"Time"];
    [tempAry addObject:tempDir];
    return tempAry;
}

-(NSDictionary*)getDefault{
    NSMutableDictionary *defaultData = [[NSMutableDictionary alloc] init];
    [defaultData setObject:[NSNumber numberWithInt:0000] forKey:@"Frame"];
    [defaultData setObject:[NSNumber numberWithInt:000000] forKey:@"Time"];
    [defaultData setObject:@"" forKey:@"Action"];
    [defaultData setObject:[self animationData] forKey:@"actionData"];
    
    return defaultData;
}//end get Default

-(NSDictionary*)animationData {
    NSMutableDictionary *temp = [[NSMutableDictionary alloc]init];
    [temp setObject:[self ball] forKey:@"Ball"];
    
    return temp;
}

-(NSArray*)ball{
    NSArray *ball = [[NSArray alloc] initWithObjects:@"Ball Data", nil];
    return ball;
}
@end
