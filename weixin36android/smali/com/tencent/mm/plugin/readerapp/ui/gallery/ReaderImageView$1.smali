.class Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:F

.field private synthetic b:J

.field private synthetic c:F

.field private synthetic d:F

.field private synthetic e:F

.field private synthetic f:F

.field private synthetic g:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;JFFFF)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->g:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    const/high16 v0, 0x4348

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->a:F

    iput-wide p2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->b:J

    iput p4, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->c:F

    iput p5, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->d:F

    iput p6, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->e:F

    iput p7, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->a:F

    iget-wide v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->b:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->c:F

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->d:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->g:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    iget v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->e:F

    iget v4, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->f:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->a(FFF)V

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;->g:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    iget-object v0, v0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
