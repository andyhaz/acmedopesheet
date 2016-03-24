//
//  ViewController.m
//  AcmeDopeSheet
//
//  Created by andrew hazlett on 3/22/16.
//  Copyright © 2016 andrew hazlett. All rights reserved.
//

#import "ViewController.h"
#import "ADSheet.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
// Do any additional setup after loading the view.
    ADSheet *DS = [[ADSheet alloc]init];
//  NSLog(@"DS:%@",[DS DopeSheetData]);
//
    [DS setError:YES];
//set ftp settings
    [DS setADSftp:24];
//add frames
    [DS ADSaddFrames:10];
//    NSLog(@"dope sheet data:%@",[DS DopeSheetData]);
    NSLog(@"DSD A :%@",[[DS DopeSheetData]objectAtIndex:2]);

//update frame
    [DS ADSupdateFrameData:3 frameVaule:2];
//get single frame
    NSLog(@"DSD B:%@",[[DS DopeSheetData]objectAtIndex:2]);
  //  int singleFrame = [DS ADSgetFrameFromRow:2];
 //   NSLog(@"single frame:%d",singleFrame);
//update
    
//  NSLog(@"dope sheet data:%@",[DS DopeSheetData]);
}
@end