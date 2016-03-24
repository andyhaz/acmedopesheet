//
//  ADSheet.h
//  AcmeDopeSheet
//  Version 1.0
//  Created by andrew hazlett on 3/22/16.
//  Copyright © 2016 andrew hazlett. All rights reserved.
//
/********************************************************
 Name:ACME Dope Sheet
 Version:0.1
 forVaule
 init
    setuu vaules to use

 update data
    update frame (updateFrameData forVaule)
    update time (updateTimeData forVaule)
    update key frame (updateKeyFrame forVaule)
    update actions (updateActionData forVaule)
    update action data (updateActionData forVaule)
 
 get Vaules
    get all frame row (gatAllFrameRow)
    get all time row (getAlltimeRow)
    get all key actions row (getAllActionRow)
    get all actions row (getAllActionRow)
    get single frame from row (getFrameFromRow)
    get single time from row (getTimeFromRow)
    get single key frame from row (getKeyFrameFromRow)
    get single from actions (getKeyActionFromRow)
    get single from actionData (getActionDataFromRow)
 */
#import <Foundation/Foundation.h>

@interface ADSheet : NSObject
/***********************************************
 Set FTP to use
 ***********************************************/
@property (nonatomic) NSMutableArray *DopeSheetData;
/***********************************************
YES Enables error handling with vaules
 ***********************************************/
@property (nonatomic) BOOL error;
/***********************************************
 Set FTP to use
 ***********************************************/
@property (nonatomic) int ADSftp;
/***********************************************
 add frame (ADSaddFrames - Vaule)
 add time  (ADSaddTimes - Vaule)
***********************************************/
- (void)ADSaddFrames:(int)frameVaule;
- (void)ADSaddTimes:(int)frameVaule;
/***********************************************
 remove from frame and time
 ***********************************************/
-(void)ADSremoveSingeFrame:(int)frameVaule;
-(void)ADSremoveSingeTime:(int)frameVaule;
-(void)ADSremoveRangeOfFramesStart:(int)frameVaule endFrame:(int)endFrameVaule;
-(void)ADSremoveRangOfTimeStart:(int)frameVaule endTime:(int)endTimeVaule;
/***********************************************
update data
 ***********************************************/
-(void)ADSupdateFrameData:(int)newVaule frameVaule:(int)frameVaule;
-(void)ADSupdateTimeData:(int)newVaule frameVaule:(int)frameVaule;
-(void)ADSupdateKeyFrame:(BOOL)newVaule frameVaule:(int)frameVaule;
-(void)ADSupdateAction:(NSString*)dataAry frameVaule:(int)frameVaule;
-(void)ADSupdateActionData:(NSArray*)dataAry frameVaule:(int)frameVaule;
/***********************************************
get frames and time data
 ***********************************************/
-(NSArray*)ADSgatAllFrameRow;
-(NSArray*)ADSgetAlltimeRow;
-(NSString*)ADSgetAllActionRow;
-(int)ADSgetFrameFromRow:(int)frameVaule;
-(int)ADSgetTimeFromRow:(int)frameVaule;
-(BOOL)ADSgetKeyFrameFromRow:(int)frameVaule;
-(NSString*)ADSgetKeyActionFromRow:(int)frameVaule;
-(NSArray*)ADSgetActionDataFromRow:(int)frameVaule;
///
@end