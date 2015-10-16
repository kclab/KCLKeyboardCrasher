//
//  ViewController.m
//  KCLKeyboardCrasher
//
//  Created by kclab on 10/9/15.
//  Copyright © 2015 kclab. All rights reserved.
//

#import "ViewController.h"

@import WebKit;

@interface ViewController ()

@property (nonatomic, strong) UIWebView *webView;
//@property (nonatomic, strong) WKWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    //self.webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.webView];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.google.com"]]];
}

@end
