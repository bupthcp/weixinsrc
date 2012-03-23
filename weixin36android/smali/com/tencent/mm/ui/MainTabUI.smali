.class public Lcom/tencent/mm/ui/MainTabUI;
.super Landroid/app/TabActivity;

# interfaces
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;


# static fields
.field private static m:Lcom/tencent/mm/ui/MainTabUI;

.field private static n:I


# instance fields
.field private a:I

.field private b:Landroid/widget/TabHost;

.field private c:Landroid/widget/RadioButton;

.field private d:Landroid/widget/RadioButton;

.field private e:Landroid/widget/RadioButton;

.field private f:Landroid/widget/RadioButton;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Z

.field private k:Z

.field private l:Z

.field private o:Landroid/view/LayoutInflater;

.field private p:Lcom/tencent/mm/ui/skin/MMSkinFactory;

.field private q:Landroid/view/View;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/ui/MainTabUI;->n:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    iput v0, p0, Lcom/tencent/mm/ui/MainTabUI;->a:I

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MainTabUI;->j:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MainTabUI;->k:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MainTabUI;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->r:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MainTabUI;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/MainTabUI;->a:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MainTabUI;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->d:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public static a()Lcom/tencent/mm/ui/MainTabUI;
    .locals 1

    sget-object v0, Lcom/tencent/mm/ui/MainTabUI;->m:Lcom/tencent/mm/ui/MainTabUI;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 7

    const/16 v6, 0x22

    const/4 v4, -0x1

    const/high16 v5, 0x400

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "MicroMsg.MainTabUI"

    const-string v3, "handleJump"

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Intro_Switch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MainTabUI;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "show_update_dialog"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/Updater;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/Updater;

    move-result-object v0

    const-string v3, "update_type"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    const-string v0, "MicroMsg.MainTabUI"

    const-string v3, "showUpdateDialog is true, but updateType is -1"

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const-string v0, "Main_User"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ConversationStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/storage/Conversation;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v0

    :goto_2
    const-string v4, "Intro_Is_Muti_Talker"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6

    if-lez v0, :cond_6

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->e()V

    const-string v0, "Intro_Bottle_unread_count"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/tencent/mm/ui/MainTabUI$1;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/MainTabUI$1;-><init>(Lcom/tencent/mm/ui/MainTabUI;)V

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/ui/Updater;->a(ILcom/tencent/mm/ui/Updater$IOnUpdateEnd;)V

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "MainUI_User_Last_Msg_Type"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_7

    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Chat_User"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "Chat_Mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    const-string v1, "tab_main"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/MainTabUI;->c()V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/tencent/mm/ui/MainTabUI;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->c:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private b()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "qqmail"

    const v2, 0x7f0a0068

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fmessage"

    const v2, 0x7f0a0069

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tmessage"

    const v2, 0x7f0a006a

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "qmessage"

    const v2, 0x7f0a006b

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "qqsync"

    const v2, 0x7f0a004d

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "floatbottle"

    const v2, 0x7f0a0050

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lbsapp"

    const v2, 0x7f0a0053

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shakeapp"

    const v2, 0x7f0a0056

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "medianote"

    const v2, 0x7f0a0059

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "qqfriend"

    const v2, 0x7f0a0062

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "readerapp"

    const v2, 0x7f0a006c

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "blogapp"

    const v2, 0x7f0a006f

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "facebookapp"

    const v2, 0x7f0a005c

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "masssendapp"

    const v2, 0x7f0a0065

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "weixin"

    const v2, 0x7f0a0049

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/tencent/mm/storage/Contact;->a(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/MainTabUI;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->e:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/MainTabUI;->a:I

    iget v0, p0, Lcom/tencent/mm/ui/MainTabUI;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic d(Lcom/tencent/mm/ui/MainTabUI;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->f:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/model/ContactStorageLogic;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->h(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ConversationStorage;->e()I

    move-result v0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->d()I

    move-result v2

    const v3, 0x8000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    sub-int v0, v1, v0

    :goto_0
    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->g:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/tencent/mm/ui/MainTabUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/MainTabUI;->a:I

    return v0
.end method

.method private e()V
    .locals 4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ConversationStorage;->e()I

    move-result v0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->d()I

    move-result v1

    if-lez v0, :cond_0

    const v2, 0x8000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/MainTabUI;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/MainTabUI;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    return-object v0
.end method

.method private f()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "can_finish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MainTabUI;->finish()V

    return-void
.end method

.method static synthetic g(Lcom/tencent/mm/ui/MainTabUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MainTabUI;->l:Z

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/MainTabUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/MainTabUI;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MainTabUI;->l:Z

    return v0
.end method


# virtual methods
.method public final a_(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MainTabUI;->d()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/MainTabUI;->e()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MainTabUI;->k:Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MainTabUI;->l:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MainTabUI;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MainTabUI;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/MainTabUI;->c()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "MicroMsg.MainTabUI"

    const-string v2, "ui group onKeyDown"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/tencent/mm/ui/MainTabUI;->a:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MainTabUI;->f()V

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->c()I

    move-result v1

    if-gt v1, v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MainTabUI;->f()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/TabActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "MicroMsg.MainTabUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.MainTabUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last countryCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/MainTabUI;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.MainTabUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new countryCode  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->r:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->r:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->r:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/tencent/mm/ui/AddressUIGroup;->a:Lcom/tencent/mm/ui/AddressUIGroup;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/ui/AddressUIGroup;->a:Lcom/tencent/mm/ui/AddressUIGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressUIGroup;->finish()V

    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->finish()V

    :cond_1
    sget-object v0, Lcom/tencent/mm/ui/FindFriendUIGroup;->a:Lcom/tencent/mm/ui/FindFriendUIGroup;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/mm/ui/FindFriendUIGroup;->a:Lcom/tencent/mm/ui/FindFriendUIGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/FindFriendUIGroup;->finish()V

    :cond_2
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->r:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->o()Lcom/tencent/mm/modelbase/LocalAccInfo;

    move-result-object v0

    const-string v1, ""

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->o()Lcom/tencent/mm/modelbase/LocalAccInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/modelbase/LocalAccInfo;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelbase/LocalAccInfo;->a(Ljava/lang/String;I)V

    :cond_3
    invoke-direct {p0}, Lcom/tencent/mm/ui/MainTabUI;->b()V

    :cond_4
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const v4, 0x7f02013b

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/mm/ui/MainTabUI;->m:Lcom/tencent/mm/ui/MainTabUI;

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.MainTabUI"

    const-string v1, "finish last mainTabUI"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/ui/MainTabUI;->m:Lcom/tencent/mm/ui/MainTabUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MainTabUI;->finish()V

    :cond_0
    sput-object p0, Lcom/tencent/mm/ui/MainTabUI;->m:Lcom/tencent/mm/ui/MainTabUI;

    sget v0, Lcom/tencent/mm/ui/MainTabUI;->n:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/mm/ui/MainTabUI;->n:I

    const-string v0, "MicroMsg.MainTabUI"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MainTabUI;->finish()V

    :goto_0
    return-void

    :cond_2
    const-string v0, "com.tencent.mm_preferences"

    invoke-virtual {p0, v0, v3}, Lcom/tencent/mm/ui/MainTabUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->r:Ljava/lang/String;

    :goto_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/MainTabUI;->b()V

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const v1, 0x7f0a0359

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->a(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {p0}, Lcom/tencent/mm/platformtools/SmileyUtil;->a(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->o:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/MainTabUI;->requestWindowFeature(I)Z

    new-instance v0, Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/skin/MMSkinFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->p:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->p:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/MMSkinFactory;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->p:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/MMSkinFactory;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->o:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/tencent/mm/ui/MainTabUI;->p:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->o:Landroid/view/LayoutInflater;

    const v1, 0x7f030065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->q:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->setContentView(Landroid/view/View;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MainTabUI;->k:Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MainTabUI;->l:Z

    const v0, 0x7f070152

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->g:Landroid/widget/TextView;

    const v0, 0x7f070155

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->h:Landroid/widget/TextView;

    const v0, 0x7f070157

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->i:Landroid/widget/TextView;

    const v0, 0x7f070153

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->d:Landroid/widget/RadioButton;

    const v0, 0x7f070154

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->e:Landroid/widget/RadioButton;

    const v0, 0x7f070151

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->c:Landroid/widget/RadioButton;

    const v0, 0x7f070156

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->f:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MainTabUI;->k:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MainTabUI;->l:Z

    if-eqz v0, :cond_9

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->d:Landroid/widget/RadioButton;

    new-instance v1, Lcom/tencent/mm/ui/MainTabUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MainTabUI$2;-><init>(Lcom/tencent/mm/ui/MainTabUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->e:Landroid/widget/RadioButton;

    new-instance v1, Lcom/tencent/mm/ui/MainTabUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MainTabUI$3;-><init>(Lcom/tencent/mm/ui/MainTabUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->c:Landroid/widget/RadioButton;

    new-instance v1, Lcom/tencent/mm/ui/MainTabUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MainTabUI$4;-><init>(Lcom/tencent/mm/ui/MainTabUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->f:Landroid/widget/RadioButton;

    new-instance v1, Lcom/tencent/mm/ui/MainTabUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MainTabUI$5;-><init>(Lcom/tencent/mm/ui/MainTabUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MainTabUI;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/MainUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    const-string v2, "tab_main"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "Tab1"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MainTabUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string v0, "MicroMsg.MainTabUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/AddressUIGroup;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    const-string v2, "tab_address"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "Tab2"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MainTabUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/FindMoreFriendsUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    const-string v2, "tab_find_friend"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "Tab3"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MainTabUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    const-string v2, "tab_settings"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "Tab4"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MainTabUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string v0, "MicroMsg.MainTabUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child count on init tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    iget v1, p0, Lcom/tencent/mm/ui/MainTabUI;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MainTabUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->r:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->r:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->r:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0a0128

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020180

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v2
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/tencent/mm/ui/MainTabUI;->n:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tencent/mm/ui/MainTabUI;->n:I

    if-nez v0, :cond_0

    sput-object v1, Lcom/tencent/mm/ui/MainTabUI;->m:Lcom/tencent/mm/ui/MainTabUI;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->p:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->p:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/MMSkinFactory;->a()V

    iput-object v1, p0, Lcom/tencent/mm/ui/MainTabUI;->p:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    :cond_1
    const-string v0, "MicroMsg.MainTabUI"

    const-string v1, "on destroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "MicroMsg.MainTabUI"

    const-string v1, "on new intent"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/MainTabUI;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    const v1, 0x7f0a012a

    const v2, 0x7f0a0129

    const v3, 0x7f0a001f

    const v4, 0x7f0a0020

    new-instance v5, Lcom/tencent/mm/ui/MainTabUI$6;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/MainTabUI$6;-><init>(Lcom/tencent/mm/ui/MainTabUI;)V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConversationStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConfigStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    :cond_0
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    const-string v0, "MicroMsg.MainTabUI"

    const-string v1, "on pause"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI;->b:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MainTabUI;->c()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "MicroMsg.MainTabUI"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConversationStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConfigStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/MainTabUI;->d()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/MainTabUI;->e()V

    return-void
.end method

.method public onStart()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "com.tencent.mm_preferences"

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/MainTabUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings_landscape_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->setRequestedOrientation(I)V

    :goto_0
    invoke-super {p0}, Landroid/app/TabActivity;->onStart()V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MainTabUI;->setRequestedOrientation(I)V

    goto :goto_0
.end method
