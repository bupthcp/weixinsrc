.class Lcom/tencent/mm/ui/chatting/ViewHolder;
.super Ljava/lang/Object;


# instance fields
.field A:Landroid/view/View;

.field B:I

.field private C:Landroid/widget/TextView;

.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/ProgressBar;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Lcom/tencent/mm/ui/AnimImageView;

.field p:Lcom/tencent/mm/ui/AnimImageView;

.field q:Landroid/view/View;

.field r:Landroid/view/View;

.field s:Landroid/widget/ImageView;

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/TextView;

.field v:Landroid/widget/ImageView;

.field w:Landroid/widget/ImageView;

.field x:Landroid/widget/ProgressBar;

.field y:Landroid/view/View;

.field z:Lcom/tencent/mm/ui/chatting/EmojiView;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)Lcom/tencent/mm/ui/chatting/ViewHolder;
    .locals 1

    const v0, 0x7f0700a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->c:Landroid/widget/ImageView;

    const v0, 0x7f0700a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->e:Landroid/widget/ImageView;

    const v0, 0x7f07009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0700a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->m:Landroid/widget/TextView;

    const v0, 0x7f0700a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    const v0, 0x7f0700a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->l:Landroid/widget/TextView;

    const v0, 0x7f0700a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->C:Landroid/widget/TextView;

    const v0, 0x7f0700a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->n:Landroid/widget/TextView;

    const v0, 0x7f07009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const/16 v0, 0xc

    :goto_0
    iput v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    return-object p0

    :cond_0
    const/16 v0, 0xd

    goto :goto_0
.end method

.method public final a(ZLandroid/view/View;)Lcom/tencent/mm/ui/chatting/ViewHolder;
    .locals 2

    const v1, 0x7f0700a0

    const v0, 0x7f07009e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0700a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->c:Landroid/widget/ImageView;

    const v0, 0x7f07009f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    :goto_0
    return-object p0

    :cond_0
    const v0, 0x7f0700bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->a:Landroid/widget/ImageView;

    const v0, 0x7f0700bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->f:Landroid/widget/ProgressBar;

    const v0, 0x7f0700be

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    goto :goto_0
.end method

.method public final b(ZLandroid/view/View;)Lcom/tencent/mm/ui/chatting/ViewHolder;
    .locals 2

    const v1, 0x7f0700a0

    const v0, 0x7f07009e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0700a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/EmojiView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->z:Lcom/tencent/mm/ui/chatting/EmojiView;

    const v0, 0x7f07009f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    const/16 v0, 0xe

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p0

    :cond_1
    const v0, 0x7f0700bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    const v0, 0x7f0700bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->a:Landroid/widget/ImageView;

    const/16 v0, 0xf

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    goto :goto_0
.end method

.method public final c(ZLandroid/view/View;)Lcom/tencent/mm/ui/chatting/ViewHolder;
    .locals 4

    const v3, 0x7f0700bc

    const/4 v2, 0x0

    const/4 v1, 0x1

    const v0, 0x7f07009e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0700a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    const v0, 0x7f07009f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const v0, 0x7f0700ba

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->k:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->a:Landroid/widget/ImageView;

    const v0, 0x7f0700a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    const v0, 0x7f0700b9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->q:Landroid/view/View;

    const v0, 0x7f0700b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->r:Landroid/view/View;

    const v0, 0x7f0700b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/AnimImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->p:Lcom/tencent/mm/ui/AnimImageView;

    const v0, 0x7f0700bb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/AnimImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->o:Lcom/tencent/mm/ui/AnimImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->o:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/AnimImageView;->a(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->o:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/AnimImageView;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->p:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/AnimImageView;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->p:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/AnimImageView;->a(I)V

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->o:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/AnimImageView;->a(Z)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    goto :goto_0
.end method

.method public final d(ZLandroid/view/View;)Lcom/tencent/mm/ui/chatting/ViewHolder;
    .locals 1

    const v0, 0x7f07009e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0700a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    const v0, 0x7f07009f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const v0, 0x7f0700a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    :goto_0
    return-object p0

    :cond_0
    const v0, 0x7f0700bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->a:Landroid/widget/ImageView;

    const v0, 0x7f0700bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->f:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    goto :goto_0
.end method

.method public final e(ZLandroid/view/View;)Lcom/tencent/mm/ui/chatting/ViewHolder;
    .locals 1

    const v0, 0x7f07009e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0700a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->c:Landroid/widget/ImageView;

    const v0, 0x7f07009f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const v0, 0x7f0700a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    const v0, 0x7f0700b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->t:Landroid/widget/TextView;

    const v0, 0x7f0700b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->u:Landroid/widget/TextView;

    const v0, 0x7f0700b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->s:Landroid/widget/ImageView;

    const v0, 0x7f0700b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->w:Landroid/widget/ImageView;

    const v0, 0x7f0700b5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->v:Landroid/widget/ImageView;

    const v0, 0x7f0700b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->x:Landroid/widget/ProgressBar;

    const v0, 0x7f0700b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->y:Landroid/view/View;

    const v0, 0x7f0700af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->A:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0xa

    :goto_0
    iput v0, p0, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    return-object p0

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method
