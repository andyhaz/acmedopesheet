//
//  ADSheet.h
//  AcmeDopeSheet
//  Version 1.0
//  Created by andrew hazlett on 3/22/16.
//  Copyright © 2016 andrew hazlett. All rights reserved.
//
/*
 -(void) ADSinitFrame;
 -(void) ADSSetFrame:(int)frameVaule;
 -(void) ADSSetTime:(int)timeVaule;
 
 -(void) ADSRemoveFrame:(int)frameVaule;
 -(void) ADSgetFrameFromTime:(int)frameVaule;
 
 -(void) ADSgetTimeFromFrame:(int)frameVaule;
 
 -(void) ADSgetFrameVaules:(int)frameVaule;
 -(void) ADSgetActionVaule:(int)frameVaule;
 -(void) ADSgetActionKeys:(int) frameVaule;
 -(void) ADSgetActionDataVaule:(int) frameVaule;
 
 -(void) ADSSetActionVaule:(NSString*)actionString  forFrame:(int)frameVaule;
 -(void) ADSSetActionDataVaule:(NSArray*)actionArray forFrame:(int)frameVaule;
 */
#import <Foundation/Foundation.h>

@interface ADSheet : NSObject
/***********************************************
 
 ***********************************************/
@property (nonatomic) BOOL error;
/***********************************************
 
 ***********************************************/
@property (nonatomic) int ADSftp;
/***********************************************
 
***********************************************/
@property (nonatomic) NSArray *ADSFrameRow;
@property (nonatomic) NSArray *ADSTimeRow;
@property (nonatomic) NSArray *ADSKeyFrameRow;
@property (nonatomic) NSArray *ADSActionRow;
@property (nonatomic) NSArray *ADSActionDataRow;
/***********************************************

***********************************************/
-(void) ADSinitFrame;
/***********************************************
 
***********************************************/
-(void) ADSSetFrame:(int)frameVaule;
/***********************************************
 
***********************************************/
-(void) ADSSetTime:(int)timeVaule;
/***********************************************
 
***********************************************/
-(void) ADSSetActionVaule:(NSString*)actionString  forFrame:(int)frameVaule;
/***********************************************
 
***********************************************/
-(void) ADSSetActionDataVaule:(NSArray*)actionArray forFrame:(int)frameVaule;
/***********************************************
 
***********************************************/
-(void) ADSSetKeyFrame:(BOOL)keyFrame forFrame:(int)frameVaule;
/***********************************************
 
***********************************************/
-(void) ADSRemoveFrame:(int)frameVaule;
/***********************************************
 
***********************************************/
-(int)  ADSgetFrameFromTime:(int)frameVaule;
/***********************************************
 
***********************************************/
-(int)  ADSgetTimeFromFrame:(int)frameVaule;
/***********************************************
 
 ***********************************************/
-(int)      ADSgetFrameVaules:(int) frameVaule;
/***********************************************
 
***********************************************/
-(NSString*)ADSgetActionVaule:(int) frameVaule;
/***********************************************
 
***********************************************/
-(BOOL)     ADSgetKeyFrameForVaule:(int) frameVaule;
/***********************************************
 
***********************************************/
-(NSArray*) ADSgetActionKeys:(int) frameVaule;
/***********************************************
 
***********************************************/
-(NSArray*) ADSgetActionDataVaule:(int) frameVaule;
@end