.class public Lcom/tencent/mm/ui/chatting/EmojiView;
.super Landroid/widget/ImageView;


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:J

.field private static d:Landroid/os/Handler;

.field private static e:I


# instance fields
.field private f:Lcom/tencent/mm/modelemoji/EmojiInfo;

.field private g:J

.field private h:I

.field private i:I

.field private j:J

.field private k:Ljava/util/List;

.field private l:Landroid/graphics/Bitmap;

.field private m:Z

.field private n:Z

.field private o:J

.field private p:Landroid/os/Handler;

.field private q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/ui/chatting/EmojiView;->a:Z

    sput-boolean v0, Lcom/tencent/mm/ui/chatting/EmojiView;->b:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/mm/ui/chatting/EmojiView;->c:J

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/chatting/EmojiView$1;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/EmojiView$1;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/tencent/mm/ui/chatting/EmojiView;->d:Landroid/os/Handler;

    const/4 v0, 0x1

    sput v0, Lcom/tencent/mm/ui/chatting/EmojiView;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-wide v2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->g:J

    iput v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->h:I

    iput v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->i:I

    iput-wide v2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->j:J

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->k:Ljava/util/List;

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->n:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->p:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/ui/chatting/EmojiView$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/EmojiView$2;-><init>(Lcom/tencent/mm/ui/chatting/EmojiView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->q:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emojiview_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static a()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lcom/tencent/mm/ui/chatting/EmojiView;->c:J

    return-void
.end method

.method public static a(J)V
    .locals 2

    sget-wide v0, Lcom/tencent/mm/ui/chatting/EmojiView;->c:J

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    sput-wide p0, Lcom/tencent/mm/ui/chatting/EmojiView;->c:J

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->f()V

    return-void
.end method

.method public static a(Z)V
    .locals 4

    sput-boolean p0, Lcom/tencent/mm/ui/chatting/EmojiView;->a:Z

    if-eqz p0, :cond_0

    sget-object v0, Lcom/tencent/mm/ui/chatting/EmojiView;->d:Landroid/os/Handler;

    sget v1, Lcom/tencent/mm/ui/chatting/EmojiView;->e:I

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/chatting/EmojiView;->d:Landroid/os/Handler;

    sget v1, Lcom/tencent/mm/ui/chatting/EmojiView;->e:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static b()J
    .locals 2

    sget-wide v0, Lcom/tencent/mm/ui/chatting/EmojiView;->c:J

    return-wide v0
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/mm/ui/chatting/EmojiView;->b:Z

    return-void
.end method

.method static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/mm/ui/chatting/EmojiView;->a:Z

    return v0
.end method

.method private e()I
    .locals 2

    iget v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->h:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->i:I

    rem-int/2addr v0, v1

    return v0
.end method

.method private f()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->i()I

    move-result v0

    sget v2, Lcom/tencent/mm/modelemoji/EmojiInfo;->e:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->k:Ljava/util/List;

    if-nez v0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-direct {v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dice_action_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/modelemoji/EmojiInfo;->c(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->i:I

    const-wide/16 v2, 0x64

    iput-wide v2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->j:J

    :cond_4
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->g()V

    iget v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->h:I

    iget v2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->i:I

    mul-int/lit8 v2, v2, 0x3

    if-gt v0, v2, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->k:Ljava/util/List;

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->e()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_5
    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->m:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->i()I

    move-result v0

    sget v2, Lcom/tencent/mm/modelemoji/EmojiInfo;->d:I

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->k:Ljava/util/List;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->i()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->i:I

    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->j:J

    :cond_7
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->g()V

    iget v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->h:I

    iget v2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->i:I

    mul-int/lit8 v2, v2, 0x3

    if-gt v0, v2, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->k:Ljava/util/List;

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->e()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    :goto_2
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    :goto_3
    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_9
    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->m:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_a
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->j()I

    move-result v0

    sget v2, Lcom/tencent/mm/modelemoji/EmojiInfo;->i:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->c()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-static {v0}, Lcom/tencent/mm/modelemoji/EmojiLogic;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiLogic;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;Landroid/content/Context;)V

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_d
    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->j:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->p()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->i:I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->j:J

    :cond_e
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->g()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getContext()Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    goto/16 :goto_0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/modelemoji/EmojiInfo;)V
    .locals 6

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/ui/chatting/EmojiView;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;JZZ)V

    return-void
.end method

.method public final a(Lcom/tencent/mm/modelemoji/EmojiInfo;JZZ)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/EmojiView;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/EmojiView;->setId(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->i()I

    move-result v0

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->a:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->i()I

    move-result v0

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->e:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->i()I

    move-result v0

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->d:I

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    :goto_0
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->m:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->requestLayout()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->invalidate()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->g:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    :cond_4
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    iput-wide p2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->g:J

    iput-boolean p5, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->n:Z

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->d()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->j()I

    move-result v0

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->i:I

    if-ne v0, v1, :cond_6

    :cond_5
    if-nez p4, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->g()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->m:Z

    :goto_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->requestLayout()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->invalidate()V

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->m:Z

    iput v2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->h:I

    iput v2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->i:I

    iput-wide v3, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->j:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->k:Ljava/util/List;

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->f()V

    iput-wide v3, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->o:J

    goto :goto_2
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->f:Lcom/tencent/mm/modelemoji/EmojiInfo;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->o:J

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->invalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->m:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tencent/mm/ui/chatting/EmojiView;->b:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->o:J

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->j:J

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->o:J

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->p:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->q:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->j:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    const-wide/16 v0, 0x64

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->j:J

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/chatting/EmojiView;->resolveSize(II)I

    move-result v1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/EmojiView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    invoke-static {v0, p2}, Lcom/tencent/mm/ui/chatting/EmojiView;->resolveSize(II)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/chatting/EmojiView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    move v1, v0

    goto :goto_0
.end method
