.class public Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;
.super Landroid/widget/FrameLayout;


# instance fields
.field a:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a:Ljava/util/List;

    return-void
.end method

.method static a(FF)F
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/text/SpannableString;Landroid/view/animation/Animation;)V
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->addView(Landroid/view/View;)V

    instance-of v1, p2, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;

    iput-object v0, p2, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;->a:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a()V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->setVisibility(I)V

    move v0, v1

    :goto_0
    const/16 v3, 0xf

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v3, p0, v4, v5}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;-><init>(Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;II)V

    const/16 v4, 0x2f

    invoke-static {p1, v4}, Lcom/tencent/mm/ui/EmojiManager;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v4, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    new-instance v4, Landroid/text/SpannableString;

    const-string v6, "  "

    invoke-direct {v4, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v6, 0x21

    invoke-virtual {v4, v5, v1, v7, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-direct {p0, v4, v3}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(Landroid/text/SpannableString;Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a()V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move v0, v1

    :goto_0
    const/16 v3, 0xf

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v3, p0, v4, v5}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;-><init>(Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;II)V

    const/16 v4, 0x1c1

    invoke-static {p1, v4}, Lcom/tencent/mm/ui/EmojiManager;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v4, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    new-instance v4, Landroid/text/SpannableString;

    const-string v6, "  "

    invoke-direct {v4, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v6, 0x21

    invoke-virtual {v4, v5, v1, v7, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-direct {p0, v4, v3}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(Landroid/text/SpannableString;Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a()V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move v0, v1

    :goto_0
    const/16 v3, 0x1e

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v3, p0, v4, v5}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;-><init>(Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;II)V

    const/16 v4, 0x88

    invoke-static {p1, v4}, Lcom/tencent/mm/ui/EmojiManager;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v4, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    new-instance v4, Landroid/text/SpannableString;

    const-string v6, "  "

    invoke-direct {v4, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v6, 0x21

    invoke-virtual {v4, v5, v1, v7, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-direct {p0, v4, v3}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(Landroid/text/SpannableString;Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 8

    const/16 v7, 0x21

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f04000e

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    const-string v0, ""

    move-object v3, v0

    move v0, v2

    :goto_0
    const/16 v5, 0xf

    if-ge v0, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v0, 0x188

    invoke-static {p1, v0}, Lcom/tencent/mm/ui/EmojiManager;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v0, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v5, v3, v2, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v0, v1

    :goto_1
    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    const/16 v2, 0xb2

    invoke-static {p1, v2}, Lcom/tencent/mm/ui/EmojiManager;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v2, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v3, v2, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-direct {p0, v5, v4}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(Landroid/text/SpannableString;Landroid/view/animation/Animation;)V

    return-void
.end method
