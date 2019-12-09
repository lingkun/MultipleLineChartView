//
//  LKViewController.m
//  MultipleLineChartView
//
//  Created by lingkun on 12/09/2019.
//  Copyright (c) 2019 lingkun. All rights reserved.
//

#import "LKViewController.h"
#import <MultipleLineChartView/LHYChartView.h>


@interface LKViewController ()

@property (nonatomic,strong)LHYChartView *chartView;

@end

@implementation LKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.chartView.frame =CGRectMake(100, 200, 300, 200);
    
}
- (LHYChartView *)chartView{
    if (_chartView) {
        _chartView =[[LHYChartView alloc]initWithFrame:CGRectMake(100, 150, 300, 200)];
        [self.view addSubview:_chartView];
    }
    return _chartView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
