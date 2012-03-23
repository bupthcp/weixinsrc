.class Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;
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

.field private synthetic o:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;II)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->o:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;-><init>(Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;)V

    const v0, 0x3c23d70a

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->i:F

    const v0, 0x3ca3d70a

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->j:F

    iput p2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->c:I

    iput p3, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->d:I

    const v0, 0x3dcccccd

    const v1, 0x3f666666

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->e:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->e:F

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->f:F

    const v0, -0x41666666

    const v1, -0x42333333

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->h:F

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->j:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->i:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->j:F

    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->h:F

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->g:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->h:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->j:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->h:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->g:F

    const v1, 0x3f8ccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->a()V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->e:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->k:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->f:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->l:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->g:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->m:F

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->h:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->n:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->k:F

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->m:F

    iget v2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->k:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->l:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->k:F

    iget v2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->l:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->k:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    :cond_0
    iget v2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->m:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->n:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->m:F

    iget v2, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->n:F

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->m:F

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

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->b()V

    :cond_2
    return-void
.end method

.method public initialize(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;->initialize(IIII)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->setRepeatCount(I)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$RainingMoneyAnim;->setDuration(J)V

    return-void
.end method
