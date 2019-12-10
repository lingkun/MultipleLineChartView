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
    LHYChartView *_incomeChartLineView =[[LHYChartView alloc]initWithFrame:CGRectMake(100, 200, 300, 300)];
    //    _incomeChartLineView
        //是否默认选中第一个
        //是否有网格
        _incomeChartLineView.isGrid = NO;
        //是否可以浮动
        _incomeChartLineView.isFloating = YES;
        _incomeChartLineView.isShowYtext = YES;
        //显示多少行
        _incomeChartLineView.row = 5;
        //显示多少列
        _incomeChartLineView.xRow = 10;
        //设置X轴坐标字体大小
        _incomeChartLineView.x_Font = [UIFont systemFontOfSize:9.5];
        //设置X轴坐标字体颜色
    _incomeChartLineView.x_Color = [UIColor whiteColor];//rgba(255, 255, 255, 1);
        //设置Y轴坐标字体大小
        _incomeChartLineView.y_Font = [UIFont systemFontOfSize:9.5];
        //设置Y轴坐标字体颜色
    _incomeChartLineView.y_Color = [UIColor grayColor];//rgba(188, 182, 184, 1);
        //设置背景颜色
    _incomeChartLineView.backgroundColor = [UIColor colorWithRed:71/155. green:70/255. blue:70/255. alpha:1];//rgba(71, 70, 70, 1);
        //边框标线颜色
    _incomeChartLineView.borderLineColor = [UIColor colorWithRed:104/255. green:104/255. blue:104/255. alpha:1];//rgba(104, 104, 104, 1);
        //中间标线颜色
        _incomeChartLineView.middleLineColor = [UIColor colorWithHexString:@"#cbcbcb" andAlpha:0.5];
        //边框三角颜色
        _incomeChartLineView.borderTriangleColor = [UIColor colorWithHexString:@"#999999"];
        //设置泡泡背景颜色
        _incomeChartLineView.paopaoBackGroundColor = [UIColor colorWithHexString:@"#000000" andAlpha:0.85];
        _incomeChartLineView.markColor = [UIColor colorWithHexString:@"#333333"];
        //设置泡泡的标题颜色
        _incomeChartLineView.paopaoTitleColor = [UIColor whiteColor];
        //设置折线样式
        _incomeChartLineView.chartViewStyle = LHYChartViewMoreClickLine;
        //设置图层效果
        _incomeChartLineView.chartLayerStyle = LHYChartGradient;
        //设置折现效果
        _incomeChartLineView.lineLayerStyle = LHYLineLayerNone;
        _incomeChartLineView.paopaoBackGroundColor = [UIColor colorWithHexString:@"#111111" andAlpha:0.6];
        //渐变效果的颜色组
        //渐变开始比例
        _incomeChartLineView.proportion = 0.3;
        //折线图是否从零点开始画
        _incomeChartLineView.hiddenZreo = NO;

        _incomeChartLineView.colors = @[@"2E8DF7",@"05D69B",@"58DAF7",@"F186A4"];

        //折线为0的时候，不偏移
        _incomeChartLineView.showChartOffset = YES;
        //设置颜色
        _incomeChartLineView.leftColorStrArr = @[@"2E8DF7",@"05D69B",@"58DAF7",@"F186A4"];
        //显示折线为直线
        _incomeChartLineView.isShowBezier = YES;
        _incomeChartLineView.lineWidth = 0.8;
        _incomeChartLineView.isShowZero =YES;
        _incomeChartLineView.isShow =NO;
        _incomeChartLineView.isSelect =YES;
        _incomeChartLineView.paopaoFollowSliding = NO;//paopaoFollowSliding

      
            _incomeChartLineView.isShowLastPaoPao = YES;

        

        //折线图数据
        _incomeChartLineView.leftDataArr = @[@[@"250",@"337",@"333",@"330",@"250",@"337",@"333",@"330",@"337",@"333",@"330",@"250",@"337",@"333",@"330",@"337",@"333",@"330",@"250",@"337",@"333",@"330"],
        @[@"100",@"250",@"337",@"333",@"330",@"337",@"333",@"330",@"250",@"337",@"333",@"330",@"337",@"333",@"330",@"250",@"337",@"333",@"330",@"307",@"130",@"11"],
         @[@"170",@"377",@"170",@"250",@"337",@"333",@"330",@"337",@"333",@"330",@"250",@"337",@"333",@"330",@"337",@"333",@"330",@"250",@"337",@"333",@"330",@"70"],
         @[@"120",@"177",@"270",@"250",@"337",@"333",@"330",@"337",@"333",@"330",@"250",@"337",@"333",@"330",@"337",@"333",@"330",@"250",@"337",@"333",@"330",@"704"]];
        
        
        //底部日期
        _incomeChartLineView.dataArrOfX =@[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20"];
        //泡泡标题
        _incomeChartLineView.paopaoTitleArray =@[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20"];
        //泡泡数据
        _incomeChartLineView.paopaoDataArray =  @[@[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20"],
        @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20"],
        @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20"],
        @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20"]];
        //开始画图
        [_incomeChartLineView show];
        
        [self.view addSubview:_incomeChartLineView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
