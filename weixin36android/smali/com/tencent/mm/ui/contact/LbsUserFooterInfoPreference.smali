.class public Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;
.super Landroid/preference/Preference;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Lcom/tencent/mm/ui/MMActivity;

.field private b:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

.field private c:Landroid/widget/Button;

.field private d:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->d:Landroid/app/ProgressDialog;

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->a:Lcom/tencent/mm/ui/MMActivity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->d:Landroid/app/ProgressDialog;

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->a:Lcom/tencent/mm/ui/MMActivity;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->d:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;Lcom/tencent/mm/modelsimple/NetSceneLbsFind;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->b:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;)Lcom/tencent/mm/ui/MMActivity;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->a:Lcom/tencent/mm/ui/MMActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->b:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    return-object v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->b:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    if-nez v0, :cond_1

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->f()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v4, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->d:Landroid/app/ProgressDialog;

    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->f()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a03c8

    const v2, 0x7f0a0010

    new-instance v3, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$2;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$2;-><init>(Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    iput-object v4, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->b:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    goto :goto_0

    :cond_3
    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->f()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->a:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f0a03c9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-object v4, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->b:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0700c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->c:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference$1;-><init>(Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method
