#line 1 "/Users/geqiangbao/1iOS的demo汇总/潭州学院iOS/第二期安全攻防资料/20180517-第十三节课-微信抢红包（一）/013--微信抢红包(一)/我的代码/my-001--WeChatDemo11/my-001--WeChatDemo11Dylib/Logos/my_001__WeChatDemo11Dylib.xm"


#import <UIKit/UIKit.h>
#define GQBDefaults [NSUserDefaults standardUserDefaults]
#define GQBSWITCHKEY @"GQBSWITCHKEY"
#define GQBTIMEKEY @"GQBTIMEKEY"


@interface MMTableViewInfo
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
@end

@interface NewSettingViewController:UIViewController

@end



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class NewSettingViewController; @class WCAccountMainLoginViewController; @class MMTableViewInfo; 
static void (*_logos_orig$_ungrouped$WCAccountMainLoginViewController$onNext)(_LOGOS_SELF_TYPE_NORMAL WCAccountMainLoginViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$WCAccountMainLoginViewController$onNext(_LOGOS_SELF_TYPE_NORMAL WCAccountMainLoginViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$NewSettingViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$NewSettingViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$NewSettingViewController$keyboardWillShow$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL, NSNotification *); static void _logos_method$_ungrouped$NewSettingViewController$keyboardWillHide$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL, NSNotification *); static NSInteger (*_logos_orig$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *); static NSInteger _logos_method$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *); static long long (*_logos_orig$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView*, long long); static long long _logos_method$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView*, long long); static CGFloat (*_logos_orig$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static CGFloat _logos_method$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static UITableViewCell * (*_logos_orig$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static UITableViewCell * _logos_method$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static void _logos_method$_ungrouped$MMTableViewInfo$switchChang$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UISwitch*); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$NewSettingViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("NewSettingViewController"); } return _klass; }
#line 18 "/Users/geqiangbao/1iOS的demo汇总/潭州学院iOS/第二期安全攻防资料/20180517-第十三节课-微信抢红包（一）/013--微信抢红包(一)/我的代码/my-001--WeChatDemo11/my-001--WeChatDemo11Dylib/Logos/my_001__WeChatDemo11Dylib.xm"

static void _logos_method$_ungrouped$WCAccountMainLoginViewController$onNext(_LOGOS_SELF_TYPE_NORMAL WCAccountMainLoginViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$WCAccountMainLoginViewController$onNext(self, _cmd);
    [[[UIAlertView alloc]initWithTitle:@"nihao" message:@"hah" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil] show];

}





static void _logos_method$_ungrouped$NewSettingViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$NewSettingViewController$viewDidLoad(self, _cmd);

      [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];

    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
}


static void _logos_method$_ungrouped$NewSettingViewController$keyboardWillShow$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSNotification * noti){
    CGRect rect = [[noti.userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
    self.view.frame = CGRectMake(0, -rect.size.height, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
}


static void _logos_method$_ungrouped$NewSettingViewController$keyboardWillHide$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSNotification * noti){
    self.view.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
}





#pragma mark section数量
static NSInteger _logos_method$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView) {
    if ([tableView.nextResponder.nextResponder isKindOfClass:_logos_static_class_lookup$NewSettingViewController()]) {
        return _logos_orig$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$(self, _cmd, tableView)+1;
    } else {
        return _logos_orig$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$(self, _cmd, tableView);
    }
}
#pragma mark  cell数量
static long long _logos_method$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView* tableView, long long section){
    if ([tableView.nextResponder.nextResponder isKindOfClass:_logos_static_class_lookup$NewSettingViewController()] && section == [self numberOfSectionsInTableView:tableView] - 1) {
        return 2;
    } else{
        return _logos_orig$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$(self, _cmd, tableView, section);
    }
}

#pragma mark 返回cell高度
static CGFloat _logos_method$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath){
    return 44;
}

#pragma mark 绘制cell
static UITableViewCell * _logos_method$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    
    if([tableView.nextResponder.nextResponder isKindOfClass:_logos_static_class_lookup$NewSettingViewController()]
       && [indexPath section] == [self numberOfSectionsInTableView:tableView]-1){
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
    return _logos_orig$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$(self, _cmd, tableView, indexPath);
}


static void _logos_method$_ungrouped$MMTableViewInfo$switchChang$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UISwitch* sender){
    [GQBDefaults setBool:sender.on forKey:GQBSWITCHKEY];
}





static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$WCAccountMainLoginViewController = objc_getClass("WCAccountMainLoginViewController"); MSHookMessageEx(_logos_class$_ungrouped$WCAccountMainLoginViewController, @selector(onNext), (IMP)&_logos_method$_ungrouped$WCAccountMainLoginViewController$onNext, (IMP*)&_logos_orig$_ungrouped$WCAccountMainLoginViewController$onNext);Class _logos_class$_ungrouped$NewSettingViewController = objc_getClass("NewSettingViewController"); MSHookMessageEx(_logos_class$_ungrouped$NewSettingViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$NewSettingViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$NewSettingViewController$viewDidLoad);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSNotification *), strlen(@encode(NSNotification *))); i += strlen(@encode(NSNotification *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$NewSettingViewController, @selector(keyboardWillShow:), (IMP)&_logos_method$_ungrouped$NewSettingViewController$keyboardWillShow$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSNotification *), strlen(@encode(NSNotification *))); i += strlen(@encode(NSNotification *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$NewSettingViewController, @selector(keyboardWillHide:), (IMP)&_logos_method$_ungrouped$NewSettingViewController$keyboardWillHide$, _typeEncoding); }Class _logos_class$_ungrouped$MMTableViewInfo = objc_getClass("MMTableViewInfo"); MSHookMessageEx(_logos_class$_ungrouped$MMTableViewInfo, @selector(numberOfSectionsInTableView:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$, (IMP*)&_logos_orig$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$);MSHookMessageEx(_logos_class$_ungrouped$MMTableViewInfo, @selector(tableView:numberOfRowsInSection:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$, (IMP*)&_logos_orig$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$);MSHookMessageEx(_logos_class$_ungrouped$MMTableViewInfo, @selector(tableView:heightForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$);MSHookMessageEx(_logos_class$_ungrouped$MMTableViewInfo, @selector(tableView:cellForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UISwitch*), strlen(@encode(UISwitch*))); i += strlen(@encode(UISwitch*)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$MMTableViewInfo, @selector(switchChang:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$switchChang$, _typeEncoding); }} }
#line 122 "/Users/geqiangbao/1iOS的demo汇总/潭州学院iOS/第二期安全攻防资料/20180517-第十三节课-微信抢红包（一）/013--微信抢红包(一)/我的代码/my-001--WeChatDemo11/my-001--WeChatDemo11Dylib/Logos/my_001__WeChatDemo11Dylib.xm"
