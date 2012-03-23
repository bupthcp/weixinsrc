.class public Lcom/tencent/mm/ui/AlphabetScrollBar;
.super Landroid/view/View;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;

.field private c:Lcom/tencent/mm/ui/MMActivity;

.field private d:I

.field private e:F

.field private f:F

.field private g:Landroid/widget/PopupWindow;

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "!"

    aput-object v2, v0, v1

    const-string v1, "+"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->a:[Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    iput-object v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->c:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/AlphabetScrollBar;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/AlphabetScrollBar;->setFocusableInTouchMode(Z)V

    const/high16 v0, 0x4040

    invoke-static {p1, v0}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->i:I

    const v0, 0x7f0300e8

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/mm/ui/AlphabetScrollBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x429e

    invoke-static {p1, v1}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->g:Landroid/widget/PopupWindow;

    const v1, 0x7f07027b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AlphabetScrollBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020265

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->j:Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->j:Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/high16 v9, 0x4000

    const v8, 0x3f99999a

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AlphabetScrollBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AlphabetScrollBar;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->i:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->a:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    div-float/2addr v0, v2

    iput v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->e:F

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v0, -0x7a736c

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->e:F

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v4, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->i:I

    int-to-float v4, v4

    invoke-virtual {p1, v0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    int-to-float v4, v1

    div-float/2addr v4, v9

    iget v5, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->e:F

    int-to-float v6, v0

    iget v7, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->e:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->i:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const v7, 0x7f0a0043

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->f:F

    iget v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->f:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    iput v4, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->f:F

    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->f:F

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AlphabetScrollBar;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AlphabetScrollBar;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->f:F

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->c:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f020266

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AlphabetScrollBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->f:F

    iget v3, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->e:F

    const v4, 0x3f99999a

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->i:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_7

    move v0, v2

    :cond_3
    :goto_0
    iput v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->d:I

    iget v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->d:I

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->g:Landroid/widget/PopupWindow;

    const/16 v3, 0x11

    invoke-virtual {v0, p0, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->j:Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->d:I

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->j:Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;

    iget-object v2, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->c:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v2, v7}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;->a(Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/AlphabetScrollBar;->invalidate()V

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_6

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/AlphabetScrollBar;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_6
    return v6

    :cond_7
    iget-object v4, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->i:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    div-float/2addr v0, v3

    float-to-int v0, v0

    if-gez v0, :cond_8

    move v0, v1

    :cond_8
    iget-object v3, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->a:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->a:[Ljava/lang/String;

    iget v4, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->d:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->j:Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;

    iget-object v2, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->a:[Ljava/lang/String;

    iget v3, p0, Lcom/tencent/mm/ui/AlphabetScrollBar;->d:I

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;->a(Ljava/lang/String;)V

    goto :goto_2
.end method
