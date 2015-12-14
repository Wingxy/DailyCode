//
//  ViewController.m
//  01-URLScheme
//
//  Created by wxy on 15/12/12.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate>


@end

@implementation ViewController

- (void)loadView {
    
    self.view = [[UIWebView alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIWebView *webView = (UIWebView *)self.view;
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"Scheme" withExtension:@"html"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [webView loadRequest:request];
    
    webView.delegate = self;
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
    [webView stringByEvaluatingJavaScriptFromString:@"加载完毕"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
