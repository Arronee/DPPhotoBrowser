//
//  DPPhotoAlbumsViewCtr.m
//  DPPhotoBrowser
//
//  Created by roc on 2017/10/25.
//  Copyright © 2017年 roc. All rights reserved.
//

#import "DPPhotoAlbumsViewCtr.h"
@interface DPPhotoAlbumsViewCtr ()<UITableViewDelegate,UITableViewDataSource>

//展示相册的tableview
@property(nonatomic,strong)UITableView *AlbumsTableView;

@property(nonatomic,strong)NSArray *Albums;

@end

@implementation DPPhotoAlbumsViewCtr

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initUI];
    
    [self featchAlbums];
}

#pragma mark ==========初始化UI ==========
-(void)initUI{
    _AlbumsTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _AlbumsTableView.delegate = self;
    _AlbumsTableView.dataSource = self;
    [self.view addSubview:_AlbumsTableView];
}
#pragma mark ==========获取相册列表 ==========
-(void)featchAlbums{
}

#pragma mark ==========tableView的代理 ==========
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 60;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"test"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"test"];
    }

    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
