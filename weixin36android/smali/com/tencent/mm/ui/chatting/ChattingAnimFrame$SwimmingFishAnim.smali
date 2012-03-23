.class Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;
.super Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;


# instance fields
.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private synthetic q:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;II)V
    .locals 2

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->q:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;-><init>(Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;)V

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->k:F

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->l:F

    iput p2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->c:I

    iput p3, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->d:I

    const v0, 0x3fe66666

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->f:F

    const v0, 0x3fb33333

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->h:F

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->b()V

    return-void
.end method

.method private b()V
    .locals 8

    const v7, 0x3ca3d70a

    const v6, -0x42333333

    const v5, -0x435c28f6

    const/4 v4, 0x0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->k:F

    float-to-double v0, v0

    const-wide v2, -0x406b851eb851eb85L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    invoke-static {v4, v7}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->i:F

    :goto_0
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->k:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->i:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->k:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->f:F

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->e:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->f:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->k:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->f:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->l:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_3

    invoke-static {v4, v7}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->j:F

    :goto_1
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->l:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->j:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->l:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->h:F

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->g:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->h:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->l:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->h:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->g:F

    cmpg-float v0, v0, v6

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->e:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->a()V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->e:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->m:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->f:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->n:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->g:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->o:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->h:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->p:F

    return-void

    :cond_2
    invoke-static {v5, v4}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->i:F

    goto :goto_0

    :cond_3
    invoke-static {v5, v4}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->j:F

    goto :goto_1
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->m:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->o:F

    iget v2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->m:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->n:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->m:F

    iget v2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->n:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->m:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    :cond_0
    iget v2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->o:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->p:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->o:F

    iget v2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->p:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->o:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->b()V

    :cond_2
    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;->initialize(IIII)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->setRepeatCount(I)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$SwimmingFishAnim;->setDuration(J)V

    return-void
.end method
