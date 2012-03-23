.class public Lcom/tencent/mm/ui/bottle/MoonImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private final a:[I

.field private final b:[D

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/MoonImageView;->a:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/MoonImageView;->b:[D

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x34t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x80t 0x41t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x49t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x4et 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x49t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x80t 0x41t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x34t 0x40t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/MoonImageView;->a:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/MoonImageView;->b:[D

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x34t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x80t 0x41t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x49t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x4et 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x49t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x80t 0x41t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x34t 0x40t
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/MoonImageView;->c:Landroid/widget/ImageView;

    return-void
.end method

.method public setVisibility(I)V
    .locals 10

    const/16 v3, 0x55

    const/4 v2, 0x6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-wide/high16 v8, 0x3ff0

    new-instance v4, Lcom/tencent/mm/ui/bottle/LunarCalendar;

    invoke-direct {v4}, Lcom/tencent/mm/ui/bottle/LunarCalendar;-><init>()V

    iget v5, v4, Lcom/tencent/mm/ui/bottle/LunarCalendar;->a:I

    if-gt v5, v0, :cond_2

    move v0, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/MoonImageView;->a:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/bottle/MoonImageView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/MoonImageView;->c:Landroid/widget/ImageView;

    packed-switch v0, :pswitch_data_0

    const/16 v1, 0xaa

    :goto_1
    :pswitch_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/MoonImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/MoonImageView;->b:[D

    aget-wide v2, v2, v0

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double v4, v8, v4

    int-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-int v0, v4

    add-int v4, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    sub-double v2, v8, v2

    int-to-double v5, v1

    mul-double/2addr v2, v5

    double-to-int v0, v2

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/MoonImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/MoonImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/MoonImageView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_2
    iget v5, v4, Lcom/tencent/mm/ui/bottle/LunarCalendar;->a:I

    if-gt v5, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v5, v4, Lcom/tencent/mm/ui/bottle/LunarCalendar;->a:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    iget v0, v4, Lcom/tencent/mm/ui/bottle/LunarCalendar;->a:I

    const/16 v5, 0xe

    if-gt v0, v5, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    iget v0, v4, Lcom/tencent/mm/ui/bottle/LunarCalendar;->a:I

    const/16 v5, 0x11

    if-gt v0, v5, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    iget v0, v4, Lcom/tencent/mm/ui/bottle/LunarCalendar;->a:I

    const/16 v5, 0x15

    if-gt v0, v5, :cond_6

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_6
    iget v0, v4, Lcom/tencent/mm/ui/bottle/LunarCalendar;->a:I

    const/16 v4, 0x1a

    if-gt v0, v4, :cond_7

    move v0, v2

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x7

    goto/16 :goto_0

    :pswitch_1
    const/16 v1, 0xff

    goto/16 :goto_1

    :pswitch_2
    const/16 v1, 0xaa

    goto/16 :goto_1

    :pswitch_3
    const/16 v1, 0x7f

    goto/16 :goto_1

    :pswitch_4
    move v1, v3

    goto/16 :goto_1

    :pswitch_5
    move v1, v3

    goto/16 :goto_1

    :pswitch_6
    const/16 v1, 0x7f

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
