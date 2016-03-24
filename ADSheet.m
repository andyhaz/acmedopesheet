//
//  ADSheet.m
//  AcmeDopeSheet
//
//  Created by andrew hazlett on 3/22/16.
//  Copyright © 2016 andrew hazlett. All rights reserved.
//

#import "ADSheet.h"

@implementation ADSheet
@synthesize error,ADSftp,DopeSheetData;
#pragma mark - init
-(id)init {
    if ( self = [super init] ) {
        DopeSheetData = [[NSMutableArray alloc]initWithArray:[self getDefaultDoopData:1 timeVaule:1]];
    }
    return self;
}//
#pragma mark - add frame/time
- (void)ADSaddFrames:(int)frameVaule{
    if(error == YES) NSLog(@"ADSaddFrames");
    int frameNumber = 1;
    for (int i = 0; i < frameVaule; i++) {
        [DopeSheetData addObject:[self getDefaultDoopData:frameNumber timeVaule:1]];
        frameNumber ++;
    }//end for loop
}

- (void)ADSaddTimes:(int)frameVaule{
    if(error == YES) NSLog(@"ADSaddTimes");
}
#pragma mark - remove from frame and time
-(void)ADSremoveSingeFrame:(int)frameVaule{
    if(error == YES) NSLog(@"ADSremoveSingeFrame");
}
-(void)ADSremoveSingeTime:(int)frameVaule{
    if(error == YES) NSLog(@"ADSremoveSingeTime");
}
-(void)ADSremoveRangeOfFramesStart:(int)frameVaule endFrame:(int)endFrameVaule{
    if(error == YES) NSLog(@"ADSremoveRangeOfFramesStart");
}
-(void)ADSremoveRangOfTimeStart:(int)frameVaule endTime:(int)endTimeVaule{
    if(error == YES) NSLog(@"ADSremoveRangOfTimeStart");
}

#pragma mark - update data
-(void)ADSupdateFrameData:(int)newVaule frameVaule:(int)frameVaule{
    if(error == YES) NSLog(@"ADSupdateFrameData:%d frameVaule:%d",newVaule,frameVaule);
    [[self getDictanaryFromItem:frameVaule] setValue:[NSNumber numberWithInt:newVaule] forKey:@"Frame"];
}
//
-(void)ADSupdateTimeData:(int)newVaule frameVaule:(int)frameVaule{
    if(error == YES) NSLog(@"ADSupdateTimeData");
    [[self getDictanaryFromItem:frameVaule] setValue:[NSNumber numberWithInt:newVaule] forKey:@"Time"];
}
-(void)ADSupdateKeyFrame:(BOOL)newVaule frameVaule:(int)frameVaule{
    if(error == YES) NSLog(@"ADSupdateKeyFrame");
    [[self getDictanaryFromItem:frameVaule] setValue:[NSNumber numberWithBool:newVaule] forKey:@"KeyFrame"];
}
-(void)ADSupdateAction:(NSString*)dataAry frameVaule:(int)frameVaule{
    if(error == YES) NSLog(@"ADSupdateAction");
    [[self getDictanaryFromItem:frameVaule] setValue:dataAry forKey:@"Action"];
}
-(void)ADSupdateActionData:(NSArray*)dataAry frameVaule:(int)frameVaule{
    if(error == YES) NSLog(@"ADSupdateActionData");
    [[self getDictanaryFromItem:frameVaule] setValue:dataAry forKey:@"ActionData"];
}

#pragma mark -  get frames and time data
-(NSArray*)ADSgatAllFrameRow{
    if(error == YES) NSLog(@"ADSgatAllFrameRow");
    return [DopeSheetData valueForKey:@"Frame"];
}
-(NSArray*)ADSgetAlltimeRow{
    if(error == YES) NSLog(@"ADSgetAlltimeRow");
    return [DopeSheetData valueForKey:@"Frame"];
}
-(NSString*)ADSgetAllActionRow{
    if(error == YES) NSLog(@"ADSgetAllActionRow");
    return [DopeSheetData valueForKey:@"Frame"];
}
-(int)ADSgetFrameFromRow:(int)frameVaule{
    if(error == YES) NSLog(@"ADSgetFrameFromRow:%d",frameVaule);
    return [[[self getDictanaryFromItem:frameVaule] objectForKey:@"Frame"] intValue];
}
-(int)ADSgetTimeFromRow:(int)frameVaule{
    if(error == YES) NSLog(@"ADSgetTimeFromRow");
    return [[[self getDictanaryFromItem:frameVaule] objectForKey:@"Time"] intValue];
}
-(BOOL)ADSgetKeyFrameFromRow:(int)frameVaule{
    if(error == YES) NSLog(@"ADSgetKeyFrameFromRow");
    return [[[self getDictanaryFromItem:frameVaule] objectForKey:@"KeyFrane"] boolValue];
}
-(NSString*)ADSgetKeyActionFromRow:(int)frameVaule{
    if(error == YES) NSLog(@"ADSgetKeyActionFromRow");
    return [[self getDictanaryFromItem:frameVaule] objectForKey:@"Action"];
}
-(NSArray*)ADSgetActionDataFromRow:(int)frameVaule{
    if(error == YES) NSLog(@"ADSgetActionDataFromRow");
    return [[self getDictanaryFromItem:frameVaule] objectForKey:@"ActionData"];
}
//
#pragma mark - set updata array
-(NSMutableArray*)getDefaultDoopData:(int)frameVaule timeVaule:(int)time{
    NSMutableArray *actionDataAry = [[NSMutableArray alloc]init];
    NSMutableDictionary *defaultDataDic = [[NSMutableDictionary alloc] init];
    NSArray *tempDic = [[NSArray alloc] initWithObjects:@"ActionData", nil];
    BOOL keyFrame = NO;
    [defaultDataDic setObject:[NSNumber numberWithInt:frameVaule] forKey:@"Frame"];
    [defaultDataDic setObject:[NSNumber numberWithInt:time] forKey:@"Time"];
    [defaultDataDic setObject:[NSNumber numberWithBool:keyFrame] forKey:@"KeyFrame"];
    [defaultDataDic setObject:@"" forKey:@"Action"];
    [defaultDataDic setObject:tempDic forKey:@"ActionData"];
    
    [actionDataAry addObject:defaultDataDic];
    
    return actionDataAry;
}//end get Default
///////
-(NSDictionary*)animationData {
    NSMutableDictionary *temp = [[NSMutableDictionary alloc]init];
    [temp setObject:[self ball] forKey:@"Ball"];
    return temp;
}
-(NSArray*)ball{
    NSArray *ball = [[NSArray alloc] initWithObjects:@"Ball Data", nil];
    return ball;
}
-(NSDictionary*)getDictanaryFromItem:(int)row{
    NSArray *temp = [[NSArray alloc] initWithArray:DopeSheetData[row]];
    return temp[0];
}
@end
