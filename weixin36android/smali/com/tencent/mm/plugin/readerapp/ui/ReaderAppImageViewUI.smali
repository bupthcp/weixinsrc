.class public Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$OnDownSucc;


# instance fields
.field private a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;

.field private b:Lcom/tencent/mm/ui/MMGallery;

.field private c:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

.field private d:F

.field private e:F

.field private f:Z

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;

.field private j:I

.field private k:I

.field private l:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->d:F

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->e:F

    iput-boolean v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->f:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->g:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->i:Ljava/util/List;

    iput v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->j:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->k:I

    new-instance v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$3;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lb/a/w;->a(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-static {p0, v3}, Lb/a/w;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {p0, v2}, Lb/a/w;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p0, v3}, Lb/a/w;->a(Landroid/view/MotionEvent;I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->k:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->k:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->j:I

    return v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300ba

    return v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;

    if-eqz v0, :cond_1

    invoke-static {}, Lb/a/w;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->getSelectedItemPosition()I

    move-result v0

    :goto_0
    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->j:I

    invoke-static {p1, v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->h:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->b:Lcom/tencent/mm/ui/MMGallery;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMGallery;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "htmlData"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "nowUrl"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "type"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->j:I

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->j:I

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    move v0, v1

    :goto_1
    if-ltz v0, :cond_1

    const-string v4, "weixin://viewimage/"

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_1

    const-string v0, "\""

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    const-string v5, "weixin://viewimage/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MicroMsg.ReaderAppImageViewUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " end:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " url:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->i:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->k:I

    :cond_2
    new-instance v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$1;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;

    invoke-static {}, Lb/a/w;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0701f1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->k:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->setSelection(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_3
    const v0, 0x7f0a0340

    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$2;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const v0, 0x7f0701f0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMGallery;

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->b:Lcom/tencent/mm/ui/MMGallery;

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->b:Lcom/tencent/mm/ui/MMGallery;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMGallery;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->b:Lcom/tencent/mm/ui/MMGallery;

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->b:Lcom/tencent/mm/ui/MMGallery;

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->k:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMGallery;->setSelection(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->b:Lcom/tencent/mm/ui/MMGallery;

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->h()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->a(Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$OnDownSucc;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->h()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->b(Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$OnDownSucc;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v0, 0x0

    const v10, 0x44558000

    const/high16 v6, 0x3f00

    const/high16 v4, 0x40a0

    const/4 v5, 0x1

    const-string v1, "MicroMsg.ReaderAppImageViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Main onTouch event.getAction():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v5, v0

    :cond_1
    :goto_1
    return v5

    :pswitch_1
    invoke-static {p2}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->a(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->d:F

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->d:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    iput-boolean v5, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->f:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->f:Z

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->a(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->e:F

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->e:F

    cmpg-float v1, v1, v4

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->e:F

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->d:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    div-float v9, v1, v10

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->g:F

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->g:F

    add-float/2addr v2, v9

    iget v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->g:F

    iget v4, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->g:F

    add-float/2addr v4, v9

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->g:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->g:F

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->b:Lcom/tencent/mm/ui/MMGallery;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    const/high16 v2, 0x43f0

    iget v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->g:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->g:F

    mul-float/2addr v3, v10

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->e:F

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->d:F

    goto :goto_1

    :pswitch_3
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->f:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
