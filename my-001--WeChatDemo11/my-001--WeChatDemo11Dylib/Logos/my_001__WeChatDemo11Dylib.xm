// See http://iphonedevwiki.net/index.php/Logos

#import <UIKit/UIKit.h>
#define GQBDefaults [NSUserDefaults standardUserDefaults]
#define GQBSWITCHKEY @"GQBSWITCHKEY"
#define GQBTIMEKEY @"GQBTIMEKEY"


@interface MMTableViewInfo
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
@end

@interface NewSettingViewController:UIViewController

@end


%hook WCAccountMainLoginViewController
- (void)onNext{
    %orig;
    [[[UIAlertView alloc]initWithTitle:@"nihao" message:@"hah" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil] show];

}
%end


%hook NewSettingViewController

- (void)viewDidLoad{
    %orig;
    //添加键盘弹起通知
      [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
//添加键盘消失通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
}

%new
-(void)keyboardWillShow:(NSNotification *)noti{
    CGRect rect = [[noti.userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
    self.view.frame = CGRectMake(0, -rect.size.height, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
}

%new
-(void)keyboardWillHide:(NSNotification *)noti{
    self.view.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
}
%end


%hook MMTableViewInfo

#pragma mark section数量
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if ([tableView.nextResponder.nextResponder isKindOfClass:%c(NewSettingViewController)]) {
        return %orig+1;
    } else {
        return %orig;
    }
}
#pragma mark  cell数量
- (long long)tableView:(UITableView*)tableView numberOfRowsInSection:(long long)section{
    if ([tableView.nextResponder.nextResponder isKindOfClass:%c(NewSettingViewController)] && section == [self numberOfSectionsInTableView:tableView] - 1) {
        return 2;
    } else{
        return %orig;
    }
}

#pragma mark 返回cell高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}

#pragma mark 绘制cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //定位设置界面&&最后一组
    if([tableView.nextResponder.nextResponder isKindOfClass:%c(NewSettingViewController)]
       && [indexPath section] == [self numberOfSectionsInTableView:tableView]-1){//定位到设置界面的最后一组
        UITableViewCell * cell = nil;
        if([indexPath row] == 0){
            static NSString * switchCell = @"switchCell";
            cell = [tableView dequeueReusableCellWithIdentifier:switchCell];
            if(!cell){
                cell  = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:switchCell];
            }
            cell.textLabel.text = @"自动抢红包";
            UISwitch * switchView = [[UISwitch alloc] init];
            cell.accessoryView = switchView;
            switchView.on = [GQBDefaults boolForKey:GQBSWITCHKEY];
            [switchView addTarget:self action:@selector(switchChang:) forControlEvents:(UIControlEventValueChanged)];
            cell.imageView.image = [UIImage imageNamed:@"clock"];
            
        }else if([indexPath row] == 1){
            static NSString * waitCell = @"waitCell";
            cell = [tableView dequeueReusableCellWithIdentifier:waitCell];
            if(!cell){
                cell  = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:waitCell];
            }
            cell.textLabel.text = @"等待时间(秒)";
            UITextField * textField = [[UITextField alloc] initWithFrame:CGRectMake(0,0,150,40)];
            textField.placeholder = @"等待时间";
            textField.borderStyle = UITextBorderStyleRoundedRect;
            cell.accessoryView = textField;
        }
        cell.backgroundColor = [UIColor whiteColor];
        return cell;
        
    }
    return %orig;
}

%new
-(void)switchChang:(UISwitch*)sender{
    [GQBDefaults setBool:sender.on forKey:GQBSWITCHKEY];
}




%end
