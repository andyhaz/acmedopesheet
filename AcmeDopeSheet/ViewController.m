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
  //  NSMutableArray *dopeSheet = [[NSMutableArray alloc]initWithArray:[self getFrame:1 Time:000000]];
  //  NSLog(@"dope sheet:%@",dopeSheet);
    // Do any additional setup after loading the view.
    ADSheet *DS = [[ADSheet alloc]init];
    [DS setError:YES];
    [DS setADSftp:24];
    [DS ADSinitFrame];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
