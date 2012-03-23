.class public Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;
.super Landroid/widget/Gallery;


# instance fields
.field private a:Landroid/view/GestureDetector;

.field private b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->a:Landroid/view/GestureDetector;

    new-instance v0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$1;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;)Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->c:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->d:I

    return v0
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/Gallery;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->c:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReaderGallery width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->d()F

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->b()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->d()F

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->c()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v3, v1

    iget v4, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->c:I

    if-gt v3, v4, :cond_1

    float-to-int v2, v2

    iget v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->d:I

    if-gt v2, v3, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v2, 0x2

    aget v0, v0, v2

    add-float/2addr v1, v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    invoke-virtual {v3, v2}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    cmpl-float v3, p3, v5

    if-lez v3, :cond_4

    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->c:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->a(FF)V

    goto :goto_0

    :cond_4
    cmpg-float v1, p3, v5

    if-gez v1, :cond_0

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->c:I

    if-ge v1, v2, :cond_5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    :cond_5
    cmpl-float v0, v0, v5

    if-lez v0, :cond_6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->a(FF)V

    goto :goto_0

    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent event.getAction()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->d()F

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->b()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->d()F

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->c()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v2, v0

    iget v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->c:I

    if-gt v2, v3, :cond_1

    float-to-int v2, v1

    iget v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->d:I

    if-gt v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "height:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x5

    aget v0, v0, v2

    add-float v2, v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent top:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " height:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
