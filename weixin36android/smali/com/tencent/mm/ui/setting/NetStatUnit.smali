.class Lcom/tencent/mm/ui/setting/NetStatUnit;
.super Landroid/view/View;


# static fields
.field protected static a:I


# instance fields
.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/setting/NetStatUnit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/setting/NetStatUnit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(II)V
    .locals 4

    const/high16 v1, 0x30

    const/high16 v3, 0x18

    const/high16 v2, 0x5a0

    iput p1, p0, Lcom/tencent/mm/ui/setting/NetStatUnit;->b:I

    iput p2, p0, Lcom/tencent/mm/ui/setting/NetStatUnit;->c:I

    if-le p1, v2, :cond_0

    iput v2, p0, Lcom/tencent/mm/ui/setting/NetStatUnit;->b:I

    :cond_0
    if-le p2, v2, :cond_1

    iput v2, p0, Lcom/tencent/mm/ui/setting/NetStatUnit;->c:I

    :cond_1
    if-le p1, p2, :cond_3

    :goto_0
    div-int v0, p1, v3

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v3

    if-le v2, v0, :cond_4

    :goto_1
    if-ge v1, v0, :cond_5

    :goto_2
    sget v1, Lcom/tencent/mm/ui/setting/NetStatUnit;->a:I

    if-le v0, v1, :cond_2

    sput v0, Lcom/tencent/mm/ui/setting/NetStatUnit;->a:I

    :cond_2
    return-void

    :cond_3
    move p1, p2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final a(IZ)V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->G()Lcom/tencent/mm/modelstat/NetStatStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelstat/NetStatStorage;->a(I)Lcom/tencent/mm/modelstat/NetStatInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->A()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->o()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->C()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->q()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/ui/setting/NetStatUnit;->a(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->z()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->n()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->B()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->p()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/ui/setting/NetStatUnit;->a(II)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const v7, 0x3f19999a

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/NetStatUnit;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/mm/ui/setting/NetStatUnit;->c:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sget v3, Lcom/tencent/mm/ui/setting/NetStatUnit;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float v2, v6, v2

    float-to-int v2, v2

    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v2, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/mm/ui/setting/NetStatUnit;->b:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sget v3, Lcom/tencent/mm/ui/setting/NetStatUnit;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float v2, v6, v2

    float-to-int v2, v2

    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method
