//
//  ViewController.m
//  DPPhotoBrowser
//
//  Created by roc on 2017/10/25.
//  Copyright © 2017年 roc. All rights reserved.
//

#import "ViewController.h"
#import "DPPhotoAlbumsViewCtr.h"
@interface ViewController ()

@property(nonatomic,strong)UIButton *photoBtn;  //点击进入相册的按钮

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.photoBtn];
}

//懒加载
-(UIButton *)photoBtn{
    if (!_photoBtn) {
        _photoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _photoBtn.frame = CGRectMake(100, 100, 100, 60);
        _photoBtn.backgroundColor = [UIColor brownColor];
        [_photoBtn setTitle:@"进入相册" forState:UIControlStateNormal];
        [_photoBtn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _photoBtn;
}
//button的点击事件
-(void)btnClick{
    DPPhotoAlbumsViewCtr *photo = [[DPPhotoAlbumsViewCtr alloc]init];
    [self presentViewController:photo animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
