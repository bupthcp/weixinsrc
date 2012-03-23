.class Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:F

.field private synthetic b:J

.field private synthetic c:F

.field private synthetic d:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$2;->a:F

    iget-wide v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$2;->b:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$2;->d:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$2;->c:F

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$2;->d:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    iget v4, v4, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->b:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->a(FF)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$2;->d:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$2;->c:F

    mul-float/2addr v2, v0

    iput v2, v1, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->b:F

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$2;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$2;->d:Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    iget-object v0, v0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
