//
//  KHLVideoViewController.m
//  Safe me
//
//  Created by Daniel Bell on 2014-06-15.
//  Copyright (c) 2014 KHL. All rights reserved.
//

#import "KHLVideoViewController.h"

@interface KHLVideoViewController ()

@end

@implementation KHLVideoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
//    [super viewDidLoad];
//    NSString *videoURL = @"http://youtu.be/Wq_CtkKrt1o";
//    
//    videoView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 768, 1024)];
//    videoView.backgroundColor = [UIColor clearColor];
//    videoView.opaque = NO;
//    videoView.delegate = self;
//    [self.view addSubview:videoView];
//    
//    
//    NSString *videoHTML = [NSString stringWithFormat:@"\
//                           <html>\
//                           <head>\
//                           <style type=\"text/css\">\
//                           iframe {position:absolute; top:50%%; margin-top:-130px;}\
//                           body {background-color:#000; margin:0;}\
//                           </style>\
//                           </head>\
//                           <body>\
//                           <iframe width=\"100%%\" height=\"240px\" src=\"%@\" frameborder=\"0\" allowfullscreen></iframe>\
//                           </body>\
//                           </html>", videoURL];
//    
//    [videoView loadHTMLString:videoHTML baseURL:nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
