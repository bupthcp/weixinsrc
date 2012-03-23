.class public Lcom/tencent/mm/ui/NetWarnView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/tencent/mm/network/NetworkHttpCheck$IOnHttpConnectFinish;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/app/ProgressDialog;

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->g:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/NetWarnView;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/NetWarnView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/NetWarnView;->g:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/NetWarnView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/NetWarnView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/NetWarnView;->h:Z

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->a:Landroid/content/Context;

    return-void
.end method

.method public final a(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/mm/ui/NetWarnView;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/NetWarnView;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/NetWarnView;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "title"

    iget-object v2, p0, Lcom/tencent/mm/ui/NetWarnView;->a:Landroid/content/Context;

    const v3, 0x7f0a0137

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "rawUrl"

    iget-object v2, p0, Lcom/tencent/mm/ui/NetWarnView;->a:Landroid/content/Context;

    const/high16 v3, 0x7f0a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/NetWarnView;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 9

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/ui/NetWarnView;->a:Landroid/content/Context;

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v4

    invoke-interface {v4}, Lcom/tencent/mm/network/IDispatcher;->g()Lcom/tencent/mm/network/INetworkEvent_AIDL;

    move-result-object v4

    invoke-interface {v4}, Lcom/tencent/mm/network/INetworkEvent_AIDL;->a()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v4

    invoke-interface {v4}, Lcom/tencent/mm/network/IDispatcher;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://w.mail.qq.com/cgi-bin/report_mm?failuretype=1&devicetype=2&clientversion=%s&os=%s&username=%s&iport=%s&t=weixin_bulletin&f=xhtml&lang=%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/tencent/mm/protocal/ConstantsProtocal;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    sget-object v7, Lcom/tencent/mm/protocal/ConstantsProtocal;->a:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x2

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    const/4 v4, 0x4

    invoke-static {}, Lcom/tencent/mm/platformtools/LocaleUtil;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/mm/ui/NetWarnView;->i:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v3, v1

    :goto_2
    if-eqz v3, :cond_1

    move v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/NetWarnView;->setVisibility(I)V

    move v1, v3

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->b:Landroid/widget/TextView;

    const v4, 0x7f0a0136

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Lcom/tencent/mm/ui/NetWarnView$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/ui/NetWarnView$1;-><init>(Lcom/tencent/mm/ui/NetWarnView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/NetWarnView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->b:Landroid/widget/TextView;

    const v4, 0x7f0a0135

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->b:Landroid/widget/TextView;

    const v4, 0x7f0a0137

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Lcom/tencent/mm/ui/NetWarnView$2;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/ui/NetWarnView$2;-><init>(Lcom/tencent/mm/ui/NetWarnView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/NetWarnView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->b:Landroid/widget/TextView;

    const v4, 0x7f0a0138

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/NetWarnView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0139

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Lcom/tencent/mm/ui/NetWarnView$3;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/ui/NetWarnView$3;-><init>(Lcom/tencent/mm/ui/NetWarnView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/NetWarnView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_1
    move v0, v2

    goto/16 :goto_3

    :catch_0
    move-exception v4

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0701aa

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/NetWarnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->b:Landroid/widget/TextView;

    const v0, 0x7f0701ab

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/NetWarnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->c:Landroid/widget/TextView;

    const v0, 0x7f0701ad

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/NetWarnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->d:Landroid/widget/TextView;

    const v0, 0x7f0701ac

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/NetWarnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->f:Landroid/widget/ProgressBar;

    const v0, 0x7f0701a9

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/NetWarnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/NetWarnView;->e:Landroid/widget/ImageView;

    return-void
.end method
