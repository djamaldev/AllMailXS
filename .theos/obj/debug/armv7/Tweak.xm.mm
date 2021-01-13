#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>
#include "accountLabels.h"



@interface MailboxContentViewController : UITableViewController
-(char)allowDeleteAll;
-(char)supportsDeleteAll;
-(char)TrashAll;
-(char)ArchiveAll;
@end

@interface ThreadedMiniMallSource
-(char)supportsDeleteAll;
-(char)supportsMoveAll;
-(char)supportsMarkAll;
@end

@interface MailboxSource
-(char)supportsDeleteAll;
-(char)supportsMoveAll;
-(char)supportsMarkAll;
-(char)_shouldDeleteImmediately;
-(char)isProtectedDataAvailable;
-(char)shouldArchiveByDefault;
@end

@interface CriterionSource
-(char)supportsDeleteAll;
-(char)supportsMoveAll;
-(char)supportsMarkAll;
@end

@interface GenericSource
-(char)supportsMoveAll;
-(char)supportsMarkAll;
-(char)supportsDeleteAll;
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

@class ThreadedMiniMallSource; @class MailboxSource; @class MailboxContentViewController; @class CriterionSource; @class GenericSource; 
static char (*_logos_orig$_ungrouped$MailboxContentViewController$allowDeleteAll)(_LOGOS_SELF_TYPE_NORMAL MailboxContentViewController* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$MailboxContentViewController$allowDeleteAll(_LOGOS_SELF_TYPE_NORMAL MailboxContentViewController* _LOGOS_SELF_CONST, SEL); static char (*_logos_orig$_ungrouped$MailboxContentViewController$TrashAll)(_LOGOS_SELF_TYPE_NORMAL MailboxContentViewController* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$MailboxContentViewController$TrashAll(_LOGOS_SELF_TYPE_NORMAL MailboxContentViewController* _LOGOS_SELF_CONST, SEL); static char (*_logos_orig$_ungrouped$ThreadedMiniMallSource$supportsDeleteAll)(_LOGOS_SELF_TYPE_NORMAL ThreadedMiniMallSource* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$ThreadedMiniMallSource$supportsDeleteAll(_LOGOS_SELF_TYPE_NORMAL ThreadedMiniMallSource* _LOGOS_SELF_CONST, SEL); static char (*_logos_orig$_ungrouped$ThreadedMiniMallSource$supportsMoveAll)(_LOGOS_SELF_TYPE_NORMAL ThreadedMiniMallSource* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$ThreadedMiniMallSource$supportsMoveAll(_LOGOS_SELF_TYPE_NORMAL ThreadedMiniMallSource* _LOGOS_SELF_CONST, SEL); static char (*_logos_orig$_ungrouped$ThreadedMiniMallSource$supportsMarkAll)(_LOGOS_SELF_TYPE_NORMAL ThreadedMiniMallSource* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$ThreadedMiniMallSource$supportsMarkAll(_LOGOS_SELF_TYPE_NORMAL ThreadedMiniMallSource* _LOGOS_SELF_CONST, SEL); static char (*_logos_orig$_ungrouped$MailboxSource$supportsDeleteAll)(_LOGOS_SELF_TYPE_NORMAL MailboxSource* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$MailboxSource$supportsDeleteAll(_LOGOS_SELF_TYPE_NORMAL MailboxSource* _LOGOS_SELF_CONST, SEL); static char (*_logos_orig$_ungrouped$MailboxSource$supportsMoveAll)(_LOGOS_SELF_TYPE_NORMAL MailboxSource* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$MailboxSource$supportsMoveAll(_LOGOS_SELF_TYPE_NORMAL MailboxSource* _LOGOS_SELF_CONST, SEL); static char (*_logos_orig$_ungrouped$MailboxSource$supportsMarkAll)(_LOGOS_SELF_TYPE_NORMAL MailboxSource* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$MailboxSource$supportsMarkAll(_LOGOS_SELF_TYPE_NORMAL MailboxSource* _LOGOS_SELF_CONST, SEL); static char (*_logos_orig$_ungrouped$MailboxSource$_shouldDeleteImmediately)(_LOGOS_SELF_TYPE_NORMAL MailboxSource* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$MailboxSource$_shouldDeleteImmediately(_LOGOS_SELF_TYPE_NORMAL MailboxSource* _LOGOS_SELF_CONST, SEL); static char (*_logos_orig$_ungrouped$MailboxSource$shouldArchiveByDefault)(_LOGOS_SELF_TYPE_NORMAL MailboxSource* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$MailboxSource$shouldArchiveByDefault(_LOGOS_SELF_TYPE_NORMAL MailboxSource* _LOGOS_SELF_CONST, SEL); static char (*_logos_orig$_ungrouped$CriterionSource$supportsDeleteAll)(_LOGOS_SELF_TYPE_NORMAL CriterionSource* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$CriterionSource$supportsDeleteAll(_LOGOS_SELF_TYPE_NORMAL CriterionSource* _LOGOS_SELF_CONST, SEL); static char (*_logos_orig$_ungrouped$CriterionSource$supportsMoveAll)(_LOGOS_SELF_TYPE_NORMAL CriterionSource* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$CriterionSource$supportsMoveAll(_LOGOS_SELF_TYPE_NORMAL CriterionSource* _LOGOS_SELF_CONST, SEL); static char (*_logos_orig$_ungrouped$CriterionSource$supportsMarkAll)(_LOGOS_SELF_TYPE_NORMAL CriterionSource* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$CriterionSource$supportsMarkAll(_LOGOS_SELF_TYPE_NORMAL CriterionSource* _LOGOS_SELF_CONST, SEL); static char (*_logos_orig$_ungrouped$GenericSource$supportsDeleteAll)(_LOGOS_SELF_TYPE_NORMAL GenericSource* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$GenericSource$supportsDeleteAll(_LOGOS_SELF_TYPE_NORMAL GenericSource* _LOGOS_SELF_CONST, SEL); static char (*_logos_orig$_ungrouped$GenericSource$supportsMoveAll)(_LOGOS_SELF_TYPE_NORMAL GenericSource* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$GenericSource$supportsMoveAll(_LOGOS_SELF_TYPE_NORMAL GenericSource* _LOGOS_SELF_CONST, SEL); static char (*_logos_orig$_ungrouped$GenericSource$supportsMarkAll)(_LOGOS_SELF_TYPE_NORMAL GenericSource* _LOGOS_SELF_CONST, SEL); static char _logos_method$_ungrouped$GenericSource$supportsMarkAll(_LOGOS_SELF_TYPE_NORMAL GenericSource* _LOGOS_SELF_CONST, SEL); 

#line 41 "Tweak.xm"


static char _logos_method$_ungrouped$MailboxContentViewController$allowDeleteAll(_LOGOS_SELF_TYPE_NORMAL MailboxContentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return _logos_orig$_ungrouped$MailboxContentViewController$allowDeleteAll(self, _cmd);
}
static char _logos_method$_ungrouped$MailboxContentViewController$TrashAll(_LOGOS_SELF_TYPE_NORMAL MailboxContentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return 1;
}





static char _logos_method$_ungrouped$ThreadedMiniMallSource$supportsDeleteAll(_LOGOS_SELF_TYPE_NORMAL ThreadedMiniMallSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return 1;
}
static char _logos_method$_ungrouped$ThreadedMiniMallSource$supportsMoveAll(_LOGOS_SELF_TYPE_NORMAL ThreadedMiniMallSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return 1;
}
static char _logos_method$_ungrouped$ThreadedMiniMallSource$supportsMarkAll(_LOGOS_SELF_TYPE_NORMAL ThreadedMiniMallSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return 1;
}




static char _logos_method$_ungrouped$MailboxSource$supportsDeleteAll(_LOGOS_SELF_TYPE_NORMAL MailboxSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return 1;
}
static char _logos_method$_ungrouped$MailboxSource$supportsMoveAll(_LOGOS_SELF_TYPE_NORMAL MailboxSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return 1;
}
static char _logos_method$_ungrouped$MailboxSource$supportsMarkAll(_LOGOS_SELF_TYPE_NORMAL MailboxSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return 1;
}

static char _logos_method$_ungrouped$MailboxSource$_shouldDeleteImmediately(_LOGOS_SELF_TYPE_NORMAL MailboxSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return 1;
}

static char _logos_method$_ungrouped$MailboxSource$shouldArchiveByDefault(_LOGOS_SELF_TYPE_NORMAL MailboxSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return _logos_orig$_ungrouped$MailboxSource$shouldArchiveByDefault(self, _cmd);
}





static char _logos_method$_ungrouped$CriterionSource$supportsDeleteAll(_LOGOS_SELF_TYPE_NORMAL CriterionSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return 1;
}
static char _logos_method$_ungrouped$CriterionSource$supportsMoveAll(_LOGOS_SELF_TYPE_NORMAL CriterionSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return 1;
}
static char _logos_method$_ungrouped$CriterionSource$supportsMarkAll(_LOGOS_SELF_TYPE_NORMAL CriterionSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return 1;
}




static char _logos_method$_ungrouped$GenericSource$supportsDeleteAll(_LOGOS_SELF_TYPE_NORMAL GenericSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return 1;
}
static char _logos_method$_ungrouped$GenericSource$supportsMoveAll(_LOGOS_SELF_TYPE_NORMAL GenericSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return 1;
}
static char _logos_method$_ungrouped$GenericSource$supportsMarkAll(_LOGOS_SELF_TYPE_NORMAL GenericSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return 1;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MailboxContentViewController = objc_getClass("MailboxContentViewController"); MSHookMessageEx(_logos_class$_ungrouped$MailboxContentViewController, @selector(allowDeleteAll), (IMP)&_logos_method$_ungrouped$MailboxContentViewController$allowDeleteAll, (IMP*)&_logos_orig$_ungrouped$MailboxContentViewController$allowDeleteAll);MSHookMessageEx(_logos_class$_ungrouped$MailboxContentViewController, @selector(TrashAll), (IMP)&_logos_method$_ungrouped$MailboxContentViewController$TrashAll, (IMP*)&_logos_orig$_ungrouped$MailboxContentViewController$TrashAll);Class _logos_class$_ungrouped$ThreadedMiniMallSource = objc_getClass("ThreadedMiniMallSource"); MSHookMessageEx(_logos_class$_ungrouped$ThreadedMiniMallSource, @selector(supportsDeleteAll), (IMP)&_logos_method$_ungrouped$ThreadedMiniMallSource$supportsDeleteAll, (IMP*)&_logos_orig$_ungrouped$ThreadedMiniMallSource$supportsDeleteAll);MSHookMessageEx(_logos_class$_ungrouped$ThreadedMiniMallSource, @selector(supportsMoveAll), (IMP)&_logos_method$_ungrouped$ThreadedMiniMallSource$supportsMoveAll, (IMP*)&_logos_orig$_ungrouped$ThreadedMiniMallSource$supportsMoveAll);MSHookMessageEx(_logos_class$_ungrouped$ThreadedMiniMallSource, @selector(supportsMarkAll), (IMP)&_logos_method$_ungrouped$ThreadedMiniMallSource$supportsMarkAll, (IMP*)&_logos_orig$_ungrouped$ThreadedMiniMallSource$supportsMarkAll);Class _logos_class$_ungrouped$MailboxSource = objc_getClass("MailboxSource"); MSHookMessageEx(_logos_class$_ungrouped$MailboxSource, @selector(supportsDeleteAll), (IMP)&_logos_method$_ungrouped$MailboxSource$supportsDeleteAll, (IMP*)&_logos_orig$_ungrouped$MailboxSource$supportsDeleteAll);MSHookMessageEx(_logos_class$_ungrouped$MailboxSource, @selector(supportsMoveAll), (IMP)&_logos_method$_ungrouped$MailboxSource$supportsMoveAll, (IMP*)&_logos_orig$_ungrouped$MailboxSource$supportsMoveAll);MSHookMessageEx(_logos_class$_ungrouped$MailboxSource, @selector(supportsMarkAll), (IMP)&_logos_method$_ungrouped$MailboxSource$supportsMarkAll, (IMP*)&_logos_orig$_ungrouped$MailboxSource$supportsMarkAll);MSHookMessageEx(_logos_class$_ungrouped$MailboxSource, @selector(_shouldDeleteImmediately), (IMP)&_logos_method$_ungrouped$MailboxSource$_shouldDeleteImmediately, (IMP*)&_logos_orig$_ungrouped$MailboxSource$_shouldDeleteImmediately);MSHookMessageEx(_logos_class$_ungrouped$MailboxSource, @selector(shouldArchiveByDefault), (IMP)&_logos_method$_ungrouped$MailboxSource$shouldArchiveByDefault, (IMP*)&_logos_orig$_ungrouped$MailboxSource$shouldArchiveByDefault);Class _logos_class$_ungrouped$CriterionSource = objc_getClass("CriterionSource"); MSHookMessageEx(_logos_class$_ungrouped$CriterionSource, @selector(supportsDeleteAll), (IMP)&_logos_method$_ungrouped$CriterionSource$supportsDeleteAll, (IMP*)&_logos_orig$_ungrouped$CriterionSource$supportsDeleteAll);MSHookMessageEx(_logos_class$_ungrouped$CriterionSource, @selector(supportsMoveAll), (IMP)&_logos_method$_ungrouped$CriterionSource$supportsMoveAll, (IMP*)&_logos_orig$_ungrouped$CriterionSource$supportsMoveAll);MSHookMessageEx(_logos_class$_ungrouped$CriterionSource, @selector(supportsMarkAll), (IMP)&_logos_method$_ungrouped$CriterionSource$supportsMarkAll, (IMP*)&_logos_orig$_ungrouped$CriterionSource$supportsMarkAll);Class _logos_class$_ungrouped$GenericSource = objc_getClass("GenericSource"); MSHookMessageEx(_logos_class$_ungrouped$GenericSource, @selector(supportsDeleteAll), (IMP)&_logos_method$_ungrouped$GenericSource$supportsDeleteAll, (IMP*)&_logos_orig$_ungrouped$GenericSource$supportsDeleteAll);MSHookMessageEx(_logos_class$_ungrouped$GenericSource, @selector(supportsMoveAll), (IMP)&_logos_method$_ungrouped$GenericSource$supportsMoveAll, (IMP*)&_logos_orig$_ungrouped$GenericSource$supportsMoveAll);MSHookMessageEx(_logos_class$_ungrouped$GenericSource, @selector(supportsMarkAll), (IMP)&_logos_method$_ungrouped$GenericSource$supportsMarkAll, (IMP*)&_logos_orig$_ungrouped$GenericSource$supportsMarkAll);} }
#line 112 "Tweak.xm"
