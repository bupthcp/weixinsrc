.class public Lcom/tencent/mm/ui/Updater;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;
.implements Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/ScrollView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;

.field private f:Landroid/app/AlertDialog;

.field private g:Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;

.field private h:Z

.field private i:Landroid/app/Notification;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/Updater;->a:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/Updater;->b:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/tencent/mm/ui/Updater;->c:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/Updater;->d:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/Updater;->e:Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;

    iput-object v0, p0, Lcom/tencent/mm/ui/Updater;->f:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/tencent/mm/ui/Updater;->g:Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;

    iput-object v0, p0, Lcom/tencent/mm/ui/Updater;->i:Landroid/app/Notification;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/Updater;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/Updater;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/Updater;Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;)Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/Updater;->g:Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;

    return-object p1
.end method

.method public static a(Landroid/content/Context;ILandroid/content/DialogInterface$OnCancelListener;Z)Lcom/tencent/mm/ui/Updater;
    .locals 4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->e()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const v0, 0x7f0300f8

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/Updater;

    invoke-direct {v0}, Lcom/tencent/mm/ui/Updater;->c()V

    iput-boolean p3, v0, Lcom/tencent/mm/ui/Updater;->j:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/tencent/mm/ui/Updater$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/tencent/mm/ui/Updater$2;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/Updater;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/Updater;->f:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/mm/ui/Updater;->h:Z

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/Updater;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->e()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    const v0, 0x7f0300f8

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/Updater;

    invoke-direct {v0}, Lcom/tencent/mm/ui/Updater;->c()V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0090

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/Updater;->f:Landroid/app/AlertDialog;

    iget-object v1, v0, Lcom/tencent/mm/ui/Updater;->f:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-boolean v5, v0, Lcom/tencent/mm/ui/Updater;->h:Z

    return-object v0

    :cond_0
    new-instance v1, Lcom/tencent/mm/ui/Updater$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/tencent/mm/ui/Updater$1;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/Updater;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method public static a(I)V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "MicroMsg.Updater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportUpdateStat : opCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpUpdateStat;

    invoke-direct {v1, p0}, Lcom/tencent/mm/storage/OpLogStorage$OpUpdateStat;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v6, 0x2000

    invoke-virtual {p0}, Lcom/tencent/mm/ui/Updater;->getContext()Landroid/content/Context;

    move-result-object v2

    const v0, 0x7f0a002f

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-ge p1, p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0a002d

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int/lit8 v1, p1, 0x64

    div-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/Updater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/tencent/mm/ui/Updater;->i:Landroid/app/Notification;

    if-nez v4, :cond_0

    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f040019

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v4, p0, Lcom/tencent/mm/ui/Updater;->i:Landroid/app/Notification;

    :cond_0
    :goto_0
    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {v2, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/mm/ui/Updater;->i:Landroid/app/Notification;

    invoke-virtual {v4, v2, v3, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v0, "notification"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x63

    iget-object v2, p0, Lcom/tencent/mm/ui/Updater;->i:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_1
    const v0, 0x7f0a002e

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/mm/ui/Updater;->g:Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;

    invoke-virtual {v5}, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f0202d6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v4, p0, Lcom/tencent/mm/ui/Updater;->i:Landroid/app/Notification;

    iget-object v4, p0, Lcom/tencent/mm/ui/Updater;->i:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/Updater;)Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->e:Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/Updater;)Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->g:Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/Updater;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/Updater;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->f:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/Updater;->b()V

    return-void
.end method

.method public final a(IILcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 5

    invoke-virtual {p3}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->c:Landroid/widget/Button;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gtz p2, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/Updater;->c:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/Updater;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/Updater;->a(II)V

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    goto :goto_1
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 9

    const v1, 0x7f070299

    const/16 v3, 0x64

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x8

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    const-string v0, "MicroMsg.Updater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/Updater;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/Updater;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo;

    const v0, 0x7f07029c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/Updater;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/Updater;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0091

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo;->i()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo;->g()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Util;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->b:Landroid/widget/ScrollView;

    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v3, v3}, Lcom/tencent/mm/ui/Updater;->a(II)V

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/Updater;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->f:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    check-cast p4, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->e:Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;

    invoke-virtual {p4}, Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/Updater;->getContext()Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/Updater;->b()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/Updater;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/16 v0, -0x12

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/Updater;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f07029a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/Updater;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/Updater;->b()V

    goto :goto_1

    :cond_3
    const v0, 0x7f07029a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/Updater;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a00d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/Updater;->b()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(ILcom/tencent/mm/ui/Updater$IOnUpdateEnd;)V
    .locals 3

    const-string v0, "MicroMsg.Updater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin update routine, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tencent/mm/ui/Updater;->e:Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;

    const v0, 0x7f070298

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/Updater;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/Updater;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f07029b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/Updater;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/tencent/mm/ui/Updater;->b:Landroid/widget/ScrollView;

    new-instance v1, Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo;

    invoke-direct {v1, p1}, Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo;-><init>(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    const v0, 0x7f07029d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/Updater;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/Updater;->c:Landroid/widget/Button;

    const v0, 0x7f07029e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/Updater;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/Updater;->d:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/Updater;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->d:Landroid/widget/Button;

    const v2, 0x7f0a00da

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->c:Landroid/widget/Button;

    new-instance v2, Lcom/tencent/mm/ui/Updater$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/tencent/mm/ui/Updater$3;-><init>(Lcom/tencent/mm/ui/Updater;Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->d:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/Updater$4;

    invoke-direct {v1, p0, p2}, Lcom/tencent/mm/ui/Updater$4;-><init>(Lcom/tencent/mm/ui/Updater;Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->d:Landroid/widget/Button;

    const v2, 0x7f0a00d9

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/Updater;->g:Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/Updater;->g:Lcom/tencent/mm/modelmulti/NetSceneGetUpdatePack;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_0
    return-void
.end method
