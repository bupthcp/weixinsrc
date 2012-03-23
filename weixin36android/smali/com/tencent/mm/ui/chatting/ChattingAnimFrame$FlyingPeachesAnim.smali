.class Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;
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
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->q:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;-><init>(Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;)V

    iput v2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->i:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->j:F

    iput v2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    iput v2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->l:F

    iput p2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->c:I

    iput p3, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->d:I

    const v0, 0x3dcccccd

    const v1, 0x3f4ccccd

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->f:F

    const v0, -0x40e66666

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->h:F

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->b()V

    return-void
.end method

.method private b()V
    .locals 9

    const-wide v7, 0x3f847ae147ae147bL

    const-wide v5, -0x407b851eb851eb85L

    const v4, 0x3c23d70a

    const/high16 v3, -0x4100

    const/4 v2, 0x0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    float-to-double v0, v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_4

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    mul-float/2addr v0, v3

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->i:F

    :cond_0
    :goto_0
    const v0, -0x43dc28f6

    invoke-static {v0, v4}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->i:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->i:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->f:F

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->e:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->f:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->f:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->f:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    float-to-double v0, v0

    cmpl-double v0, v0, v7

    if-lez v0, :cond_5

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    mul-float/2addr v0, v3

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->i:F

    :cond_1
    :goto_1
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->f:F

    const v1, 0x3f666666

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, -0x40e66666

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    float-to-double v0, v0

    cmpg-double v0, v0, v5

    if-gez v0, :cond_6

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    mul-float/2addr v0, v3

    invoke-static {v2, v0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->i:F

    :cond_2
    :goto_2
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->l:F

    const v1, 0x3ca3d70a

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    const v0, -0x435c28f6

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->j:F

    :goto_3
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->l:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->j:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->l:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->h:F

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->g:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->h:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->l:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->h:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->g:F

    const v1, 0x3f8ccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->a()V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->e:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->m:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->f:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->n:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->g:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->o:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->h:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->p:F

    return-void

    :cond_4
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    float-to-double v0, v0

    cmpg-double v0, v0, v5

    if-gez v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->k:F

    mul-float/2addr v0, v3

    invoke-static {v2, v0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->i:F

    goto/16 :goto_0

    :cond_5
    const v0, 0x3ba3d70a

    invoke-static {v0, v4}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->i:F

    goto/16 :goto_1

    :cond_6
    const v0, -0x43dc28f6

    const v1, -0x445c28f6

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->i:F

    goto :goto_2

    :cond_7
    const v0, 0x3ca3d70a

    invoke-static {v2, v0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->j:F

    goto :goto_3
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->m:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->o:F

    iget v2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->m:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->n:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->m:F

    iget v2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->n:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->m:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    :cond_0
    iget v2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->o:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->p:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->o:F

    iget v2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->p:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->o:F

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

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->b()V

    :cond_2
    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;->initialize(IIII)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->setRepeatCount(I)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$FlyingPeachesAnim;->setDuration(J)V

    return-void
.end method
