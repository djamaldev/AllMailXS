@interface MailAccount : NSObject
	- (NSString *)displayName;
	- (NSString *)firstEmailAddress;
@end

@interface MFLibraryMessage : NSObject
	- (unsigned int)mailboxID;
	- (MailAccount *)account;
@end

@interface _CellStaticView : UIView
@end

@interface MailboxContentViewCell : UIView{
	_CellStaticView *_staticView;
}
	- (MFLibraryMessage *)message;
@end

@interface MailAppController : UINavigationController
	@property (readonly,assign,nonatomic) NSSet *displayedAccounts;
-(void)setEditing:(BOOL)arg1 animated:(BOOL)arg2;
@end
	
@interface MailboxTableCell : UIView{
	UILabel *_titleLabel;
}
	@property (assign, nonatomic) BOOL hasLeftAccessory;
	@property (nonatomic,retain) UIView *contentView;
	- (UITableView *)_tableView;
@end

@interface MailboxTableCell (accountLabels) <UIGestureRecognizerDelegate>
	- (void)setColor:(NSString *)hexCode;
	- (void)swipeIt:(UISwipeGestureRecognizer *)gestureRecognizer;
@end
