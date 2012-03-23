.class Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;


# direct methods
.method synthetic constructor <init>(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;->a:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;->a:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;->a:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->a(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;)Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;->a:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->a(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->d()F

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;->a:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-static {v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->a(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->a()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;->a:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->a(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;->a:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-static {v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->a(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->a()F

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;->a:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-static {v2}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;->a:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-static {v3}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->c(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->b(FFF)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;->a:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->a(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    move-result-object v0

    const/high16 v1, 0x3f80

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;->a:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-static {v2}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->b(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery$MySimpleGesture;->a:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;

    invoke-static {v3}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;->c(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderGallery;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->b(FFF)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
