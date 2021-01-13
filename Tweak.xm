
#import <UIKit/UIKit.h>

@interface MailboxContentViewController : UIViewController

@end

%hook MailboxContentViewController

- (char)allowDeleteAll {
	 return YES;
  }

%end

%hook MailboxSource
-(char)supportsDeleteAll{
	return YES;
}
-(char)supportsMoveAll{
	return YES;
}
-(char)_shouldDeleteImmediately{
	return YES;
}

%end

%hook GenericSource

-(char)supportsDeleteAll{
	return %orig;
}
-(char)supportsMoveAll{
	return YES;
}

%end

%hook ThreadedMiniMallSource

-(char)supportsDeleteAll{
	return YES;
}
-(char)supportsMoveAll{
	return YES;
}
%end

%hook CriterionSource
-(char)supportsDeleteAll{
	return YES;
}

%end
