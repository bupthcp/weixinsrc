.class Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:F

.field private b:F

.field private synthetic c:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$1;->c:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$1;->c:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$1;->c:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->a(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;)Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReaderGallery onTouch event.getAction():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iput v4, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$1;->a:F

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$1;->c:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->a(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->d()F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$1;->b:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "originalScale :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$1;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {p2}, Lb/a/w;->a(Landroid/view/MotionEvent;)I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {p2, v6}, Lb/a/w;->a(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-static {p2, v5}, Lb/a/w;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {p2, v6}, Lb/a/w;->b(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p2, v5}, Lb/a/w;->b(Landroid/view/MotionEvent;I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$1;->a:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iput v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$1;->a:F

    :cond_1
    :goto_0
    return v6

    :cond_2
    iget v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$1;->a:F

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$1;->c:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-static {v3}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->a(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$1;->b:F

    mul-float/2addr v2, v4

    invoke-static {p2, v5}, Lb/a/w;->a(Landroid/view/MotionEvent;I)F

    move-result v4

    add-float/2addr v0, v4

    invoke-static {p2, v5}, Lb/a/w;->b(Landroid/view/MotionEvent;I)F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {v3, v2, v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->a(FFF)V

    goto :goto_0
.end method
