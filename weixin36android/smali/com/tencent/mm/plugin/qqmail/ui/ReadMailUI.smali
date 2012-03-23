.class public Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/webkit/WebView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

.field private j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

.field private k:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/ImageView;

.field private w:Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;

.field private x:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, -0x1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-wide v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->a:J

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->w:Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;

    iput-wide v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->x:J

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->a:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->m:Landroid/view/View;

    return-object v0
.end method

.method private a(Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "MicroMsg.ReadMailUI"

    const-string v1, "doReadMail invalid argument"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mailid"

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "texttype"

    const-string v2, "html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->x:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->x:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->x:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(J)V

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v2

    const-string v3, "/cgi-bin/readmail"

    new-instance v4, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$12;

    invoke-direct {v4, p0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$12;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0, p1, v4}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->b(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->x:J

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;Ljava/lang/Runnable;)V
    .locals 5

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->d:Landroid/webkit/WebView;

    new-instance v2, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$14;

    invoke-direct {v2, p0, v0, p1}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$14;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;Landroid/webkit/CookieManager;Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;Ljava/util/Map;)V
    .locals 6

    const/4 v5, 0x0

    const-string v0, ".Response.result.attachlen"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->r:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f070206

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAttachListLinearLayout;

    const v1, 0x7f070205

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0a043c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAttachListLinearLayout;->removeAllViews()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAttachListLinearLayout;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/Map;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->b(Ljava/util/Map;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 9

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    iget-wide v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->x:J

    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->x:J

    const-wide/16 v6, -0x2

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->x:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(J)V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(J)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    const-string v2, "msg"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->o()V

    const-string v0, ".msg.pushmail.mailid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->b:Ljava/lang/String;

    const-string v0, ".msg.pushmail.content.subject"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->i:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    new-array v4, v8, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ".msg.pushmail.content.fromlist.item.name"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v0, ".msg.pushmail.content.fromlist.item.addr"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {v3, v4, v8}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a([Ljava/lang/String;Z)V

    const-string v0, ".msg.pushmail.content.tolist.$count"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, ".msg.pushmail.content.tolist"

    invoke-static {v2, v3, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->b(Ljava/util/Map;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->k:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v3, v0, v8}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a([Ljava/lang/String;Z)V

    const-string v0, ".msg.pushmail.content.cclist.$count"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, ".msg.pushmail.content.cclist"

    invoke-static {v2, v3, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->b(Ljava/util/Map;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->n:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    array-length v0, v3

    if-nez v0, :cond_2

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v0, v3, v8}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a([Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->p:Landroid/widget/TextView;

    const-string v0, ".msg.pushmail.content.date"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->q:Landroid/widget/TextView;

    const v1, -0xecb54b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->q:Landroid/widget/TextView;

    const v1, 0x7f020276

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const-string v0, ".msg.pushmail.content.digest"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->d:Landroid/webkit/WebView;

    const-string v1, "https://qqmail.weixin.qq.com"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;-><init>()V

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/util/Map;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-array v1, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".item"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".name"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".addr"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->k:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "MicroMsg.ReadMailUI"

    const-string v1, "doSetUnread invalid argument"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mailid"

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->b()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v2

    const-string v3, "/cgi-bin/setmailunread"

    new-instance v4, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$13;

    invoke-direct {v4, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$13;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->b(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)J

    goto :goto_0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->a:J

    return-wide v0
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->b()V

    return-void
.end method

.method static synthetic i(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->b(J)I

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->finish()V

    return-void
.end method

.method static synthetic j(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->i:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->w:Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;

    return-object v0
.end method

.method private o()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    const-string v3, "qqmail"

    const/16 v4, 0x23

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/MsgInfoStorage;->g(Ljava/lang/String;I)I

    move-result v3

    iget-wide v4, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->a:J

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mm/storage/MsgInfoStorage;->d(J)I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->d(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->g:Landroid/view/View;

    if-ge v4, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->h:Landroid/view/View;

    if-le v4, v1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static synthetic p(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic q(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->s:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic r(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)J
    .locals 2

    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->x:J

    return-wide v0
.end method

.method static synthetic s(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->q:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300bf

    return v0
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->o()V

    return-void
.end method

.method protected final j()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "msgid"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->a:J

    const v0, 0x7f07018a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->g:Landroid/view/View;

    const v0, 0x7f07018b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->h:Landroid/view/View;

    const v0, 0x7f0701fb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->i:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    const v0, 0x7f0701fe

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->k:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    const v0, 0x7f070200

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    const v0, 0x7f0701fc

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->l:Landroid/widget/TextView;

    const v0, 0x7f0701fd

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->m:Landroid/view/View;

    const v0, 0x7f0701ff

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f070201

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->o:Landroid/widget/TextView;

    const v0, 0x7f070202

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->p:Landroid/widget/TextView;

    const v0, 0x7f070203

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->q:Landroid/widget/TextView;

    const v0, 0x7f070204

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->r:Landroid/widget/LinearLayout;

    const v0, 0x7f07020c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->e:Landroid/widget/ProgressBar;

    const v0, 0x7f07020d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->f:Landroid/widget/ImageView;

    const v0, 0x7f070207

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->d:Landroid/webkit/WebView;

    const v0, 0x7f070208

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->s:Landroid/widget/ImageView;

    const v0, 0x7f070209

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->t:Landroid/widget/ImageView;

    const v0, 0x7f07020a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->u:Landroid/widget/ImageView;

    const v0, 0x7f07020b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->v:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$1;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->q:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$2;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$3;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->g:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$4;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->h:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$5;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$6;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$6;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->s:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$8;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$8;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->t:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$9;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$9;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->u:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->v:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$11;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$11;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->d:Landroid/webkit/WebView;

    invoke-static {v0}, Lb/a/ae;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$7;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$7;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->w:Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->a()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->d:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method protected onPause()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/MsgInfoStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    iget-wide v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->x:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->x:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->x:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(J)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    iget-wide v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->x:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->b()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onStop()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method
