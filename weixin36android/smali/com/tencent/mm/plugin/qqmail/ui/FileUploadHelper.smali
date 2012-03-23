.class public Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/util/Map;

.field private e:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$OnUploadCompletedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->e:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$OnUploadCompletedListener;

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->f()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;)V
    .locals 9

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a:Landroid/content/Context;

    const v1, 0x7f0300ac

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0701cc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0701cd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0701ce

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const v3, 0x7f0701cf

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0701d0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0701d1

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->e()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/tencent/mm/platformtools/Util;->b(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;

    invoke-direct {v6, p0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;)V

    iput-object v1, v6, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->a:Landroid/widget/TextView;

    iput-object v2, v6, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->b:Landroid/widget/ProgressBar;

    iput-object v3, v6, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->c:Landroid/widget/TextView;

    iput-object v4, v6, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->d:Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->f()V

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$1;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;Landroid/widget/LinearLayout;)V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->b:Landroid/view/ViewGroup;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$3;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->f()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->b(J)Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->b(Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;)V

    return-void
.end method

.method private b(Ljava/lang/String;)J
    .locals 6

    new-instance v4, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;

    invoke-direct {v4}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->b()V

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->a()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v0

    const-string v1, "/cgi-bin/uploaddata"

    const-string v2, "UploadFile"

    new-instance v5, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;

    invoke-direct {v5, p0, p1}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;Ljava/lang/String;)V

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    return-object v0
.end method

.method private b(Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->f()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->a:Landroid/widget/TextView;

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->a:Landroid/widget/TextView;

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$ItemViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->f()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;)V
    .locals 5

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->e:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$OnUploadCompletedListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->e:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$OnUploadCompletedListener;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->f()I

    move-result v0

    if-eq v0, v4, :cond_0

    :cond_1
    invoke-interface {v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$OnUploadCompletedListener;->a()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->f()I

    move-result v0

    if-eq v0, v4, :cond_4

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->e:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$OnUploadCompletedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->e:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$OnUploadCompletedListener;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$OnUploadCompletedListener;->b()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private f()V
    .locals 8

    const v3, 0x7f0a0447

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a:Landroid/content/Context;

    const v3, 0x7f0a0448

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a:Landroid/content/Context;

    const v3, 0x7f0a0449

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->e()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcom/tencent/mm/platformtools/Util;->b(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    const-string v1, ""

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final a(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$OnUploadCompletedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->e:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$OnUploadCompletedListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;-><init>()V

    invoke-virtual {v1, p1}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->b(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->a(J)Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->a(I)Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a(Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a(Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()Ljava/util/LinkedList;
    .locals 4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->f()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->g()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(J)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->a(I)Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->b(Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->f()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->f()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final e()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    int-to-long v3, v1

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->e()J

    move-result-wide v0

    add-long/2addr v0, v3

    long-to-int v0, v0

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method
