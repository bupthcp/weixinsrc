.class Lcom/tencent/mm/ui/video/VideoRecorderUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/video/VideoRecorderUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 11

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(Lcom/tencent/mm/ui/video/VideoRecorderUI;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(Lcom/tencent/mm/ui/video/VideoRecorderUI;J)J

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(Lcom/tencent/mm/ui/video/VideoRecorderUI;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->b(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/TextView;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    long-to-int v3, v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/16 v2, 0x4e20

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->c(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->c(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    const v4, 0x7f0a032c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0x7530

    sub-long/2addr v7, v0

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    const-string v0, "MicroMsg.VideoRecorderUI"

    const-string v1, "record stop on countdown"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    const v2, 0x7f020254

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->e(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(Lcom/tencent/mm/ui/video/VideoRecorderUI;J)J

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->c(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->f(Lcom/tencent/mm/ui/video/VideoRecorderUI;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(Lcom/tencent/mm/ui/video/VideoRecorderUI;I)I

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->f(Lcom/tencent/mm/ui/video/VideoRecorderUI;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    const v2, 0x7f020254

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->g(Lcom/tencent/mm/ui/video/VideoRecorderUI;)I

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    const v2, 0x7f020255

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
