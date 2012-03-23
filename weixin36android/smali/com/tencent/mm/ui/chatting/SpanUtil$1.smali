.class Lcom/tencent/mm/ui/chatting/SpanUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/chatting/SpanUtil$OnSpanClick;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/SpanUtil;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/SpanUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;)V
    .locals 7

    const v6, 0x7f0a0186

    const v3, 0x7f0a0010

    const/high16 v5, 0x1000

    const/high16 v4, 0x400

    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->e:Ljava/lang/Object;

    instance-of v0, v0, Lcom/tencent/mm/storage/GroupInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->e:Ljava/lang/Object;

    :goto_0
    check-cast v0, Lcom/tencent/mm/storage/GroupInfo;

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0047

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/model/GroupInfoLogic;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/storage/GroupInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->c:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "Contact_User"

    invoke-virtual {p1}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMWizardActivity;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    :cond_6
    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    const-string v1, "tab_settings"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MainTabUI;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    :cond_7
    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    const-string v1, "tab_settings"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MainTabUI;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "qqmail"

    const-string v2, "Contact_User"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    :cond_9
    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    const-string v1, "tab_settings"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MainTabUI;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    :cond_a
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/ContactSearchUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    :cond_b
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_b
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    :cond_c
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/friend/QQGroupUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_c
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    :cond_d
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/friend/MobileFriendUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_d
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "weibo"

    const-string v2, "Contact_User"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_e
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/GroupInfoLogic;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/GroupInfo;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/AddressUI;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "Contact_GroupFilter_Type"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_GroupFilter_DisplayName"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    const-string v2, "tab_settings"

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/MainTabUI;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    const-string v1, "tab_settings"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MainTabUI;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    goto/16 :goto_1

    :pswitch_10
    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@t.qq.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v1

    const-string v2, "@t.qq.com"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_12

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_11
    const/4 v1, 0x0

    goto :goto_2

    :cond_12
    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@domain.android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/tencent/mm/model/GroupInfoLogic;->a()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_13
    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v1

    const-string v2, "tab_settings"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MainTabUI;->b(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Lcom/tencent/mm/ui/chatting/SpanUtil;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/AddressUI;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "Contact_GroupFilter_Type"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Contact_GroupFilter_Str"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Contact_GroupFilter_DisplayName"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SpanUtil$1;->a:Lcom/tencent/mm/ui/chatting/SpanUtil;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Lcom/tencent/mm/ui/chatting/SpanUtil;)Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/ui/chatting/SpanUtil$HrefInfo;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;->a(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_10
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_f
        :pswitch_f
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_8
        :pswitch_f
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method
