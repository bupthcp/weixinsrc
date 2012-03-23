.class Lcom/tencent/mm/ui/video/VideoRecorderUI$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/video/VideoRecorderUI$2;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/video/VideoRecorderUI$2;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$2$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$2$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI$2;

    iget-object v0, v0, Lcom/tencent/mm/ui/video/VideoRecorderUI$2;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->j(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$2$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI$2;

    iget-object v0, v0, Lcom/tencent/mm/ui/video/VideoRecorderUI$2;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->k(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$2$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI$2;

    iget-object v1, v1, Lcom/tencent/mm/ui/video/VideoRecorderUI$2;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    const v2, 0x7f0202ee

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$2$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI$2;

    iget-object v0, v0, Lcom/tencent/mm/ui/video/VideoRecorderUI$2;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->l(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$2$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI$2;

    iget-object v0, v0, Lcom/tencent/mm/ui/video/VideoRecorderUI$2;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->k(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI$2$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI$2;

    iget-object v1, v1, Lcom/tencent/mm/ui/video/VideoRecorderUI$2;->a:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    const v2, 0x7f0202ef

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
