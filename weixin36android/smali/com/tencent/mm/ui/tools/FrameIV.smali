.class public Lcom/tencent/mm/ui/tools/FrameIV;
.super Landroid/view/View;


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/tencent/mm/ui/tools/FrameIV;->a:I

    iput v0, p0, Lcom/tencent/mm/ui/tools/FrameIV;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/tencent/mm/ui/tools/FrameIV;->a:I

    iput v0, p0, Lcom/tencent/mm/ui/tools/FrameIV;->b:I

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
