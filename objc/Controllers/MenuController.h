#import <Cocoa/Cocoa.h>
#import "MainWindow.h"
#import "InputTextField.h"
#import "ServerTreeView.h"
#import "MemberListView.h"
#import "PreferencesController.h"
#import "NickSheet.h"


@class AppController;
@class IRCWorld;


@interface MenuController : NSObject
{
	IBOutlet NSMenuItem* closeWindowItem;
	IBOutlet NSMenuItem* closeCurrentPanelItem;
	
	AppController* app;
	IRCWorld* world;
	MainWindow* window;
	InputTextField* text;
	ServerTreeView* tree;
	MemberListView* memberList;
	
	NSString* url;
	NSString* addr;
	NSString* nick;
	NSString* chan;
	
	PreferencesController* preferencesController;
	NSMutableArray* serverDialogs;
	NSMutableArray* channelDialogs;
	NSMutableArray* pasteClients;
	
	NickSheet* nickSheet;
}

@property (nonatomic, assign) AppController* app;
@property (nonatomic, assign) IRCWorld* world;
@property (nonatomic, assign) MainWindow* window;
@property (nonatomic, assign) InputTextField* text;
@property (nonatomic, assign) ServerTreeView* tree;
@property (nonatomic, assign) MemberListView* memberList;

@property (nonatomic, retain) NSString* url;
@property (nonatomic, retain) NSString* addr;
@property (nonatomic, retain) NSString* nick;
@property (nonatomic, retain) NSString* chan;

- (void)terminate;

- (void)onPreferences:(id)sender;
- (void)onAutoOp:(id)sender;
- (void)onDcc:(id)sender;

- (void)onCloseWindow:(id)sender;
- (void)onCloseCurrentPanel:(id)sender;

- (void)onPaste:(id)sender;
- (void)onPasteDialog:(id)sender;
- (void)onUseSelectionForFind:(id)sender;
- (void)onPasteMyAddress:(id)sender;
- (void)onSearchWeb:(id)sender;
- (void)onCopyLogAsHtml:(id)sender;
- (void)onCopyConsoleLogAsHtml:(id)sender;

- (void)onMarkScrollback:(id)sender;
- (void)onClearMark:(id)sender;
- (void)onGoToMark:(id)sender;
- (void)onMarkAllAsRead:(id)sender;
- (void)onMarkAllAsReadAndMarkAllScrollbacks:(id)sender;
- (void)onMakeTextBigger:(id)sender;
- (void)onMakeTextSmaller:(id)sender;
- (void)onReloadTheme:(id)sender;

- (void)onConnect:(id)sender;
- (void)onDisconnect:(id)sender;
- (void)onCancelReconnecting:(id)sender;
- (void)onNick:(id)sender;
- (void)onChannelList:(id)sender;
- (void)onAddServer:(id)sender;
- (void)onCopyServer:(id)sender;
- (void)onDeleteServer:(id)sender;
- (void)onServerProperties:(id)sender;
- (void)onServerAutoOp:(id)sender;

- (void)onJoin:(id)sender;
- (void)onLeave:(id)sender;
- (void)onTopic:(id)sender;
- (void)onMode:(id)sender;
- (void)onAddChannel:(id)sender;
- (void)onDeleteChannel:(id)sender;
- (void)onChannelProperties:(id)sender;
- (void)onChannelAutoOp:(id)sender;

- (void)onReloadPlugins:(id)sender;

- (void)memberListDoubleClicked:(id)sender;
- (void)onMemberWhois:(id)sender;
- (void)onMemberTalk:(id)sender;
- (void)onMemberGiveOp:(id)sender;
- (void)onMemberDeop:(id)sender;
- (void)onMemberKick:(id)sender;
- (void)onMemberBan:(id)sender;
- (void)onMemberKickBan:(id)sender;
- (void)onMemberGiveVoice:(id)sender;
- (void)onMemberDevoice:(id)sender;
- (void)onMemberSendFile:(id)sender;
- (void)onMemberPing:(id)sender;
- (void)onMemberTime:(id)sender;
- (void)onMemberVersion:(id)sender;
- (void)onMemberUserInfo:(id)sender;
- (void)onMemberClientInfo:(id)sender;
- (void)onMemberAutoOp:(id)sender;

- (void)onCopyUrl:(id)sender;
- (void)onJoinChannel:(id)sender;
- (void)onCopyAddress:(id)sender;

@end