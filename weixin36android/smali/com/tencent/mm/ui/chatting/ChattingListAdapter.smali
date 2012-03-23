.class public Lcom/tencent/mm/ui/chatting/ChattingListAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;

# interfaces
.implements Lcom/tencent/mm/modelvideo/VideoInfoStorage$IOnVideoInfoChanged;


# instance fields
.field private a:[S

.field private b:[S

.field private f:I

.field private g:I

.field private h:Ljava/util/HashSet;

.field private final i:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

.field private final j:Lcom/tencent/mm/ui/chatting/SpanUtil;

.field private final k:Lcom/tencent/mm/ui/chatting/AutoPlay;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Z

.field private o:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field private p:Lcom/tencent/mm/ui/chatting/ChatBgAttr;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/MsgInfo;Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/mm/ui/chatting/AutoPlay;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->h:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->p:Lcom/tencent/mm/ui/chatting/ChatBgAttr;

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    new-instance v0, Lcom/tencent/mm/ui/chatting/SpanUtil;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$1;-><init>(Lcom/tencent/mm/ui/chatting/ChattingListAdapter;Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-direct {v0, p1, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->j:Lcom/tencent/mm/ui/chatting/SpanUtil;

    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->m:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->l:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->n:Z

    iput-object p6, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->k:Lcom/tencent/mm/ui/chatting/AutoPlay;

    const/16 v0, 0x12

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->f:I

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->f:I

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->g:I

    new-instance v0, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->i:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    return-void
.end method

.method private static a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingListAdapter;)V
    .locals 5

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->m:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/SendVerifyRequest;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    new-instance v4, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$2;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$2;-><init>(Lcom/tencent/mm/ui/chatting/ChattingListAdapter;)V

    invoke-direct {v0, v3, v4}, Lcom/tencent/mm/ui/SendVerifyRequest;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/SendVerifyRequest$IOnSendVerifyRequest;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/SendVerifyRequest;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/tencent/mm/ui/chatting/ViewHolder;Lcom/tencent/mm/storage/MsgInfo;)V
    .locals 13

    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Lcom/tencent/mm/storage/MsgInfo;)F

    move-result v0

    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->k:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/chatting/AutoPlay;->g()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->o:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v1, v7}, Lcom/tencent/mm/ui/AnimImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->o:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/AnimImageView;->a()V

    :goto_1
    new-instance v1, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;

    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->r:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->q:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->p:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/AnimImageView;->a()V

    :cond_2
    :goto_2
    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v2

    if-ne v9, v2, :cond_3

    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo;->e()I

    move-result v2

    if-ne v2, v9, :cond_8

    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->q:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->r:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->p:Lcom/tencent/mm/ui/chatting/ChatBgAttr;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->p:Lcom/tencent/mm/ui/chatting/ChatBgAttr;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChatBgAttr;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->p:Lcom/tencent/mm/ui/chatting/ChatBgAttr;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatBgAttr;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    const/high16 v2, 0x4000

    const v3, 0x3f99999a

    const v4, 0x3f99999a

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->p:Lcom/tencent/mm/ui/chatting/ChatBgAttr;

    invoke-virtual {v5}, Lcom/tencent/mm/ui/chatting/ChatBgAttr;->e()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->p:Lcom/tencent/mm/ui/chatting/ChatBgAttr;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatBgAttr;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    const v2, 0x7f0200d8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_4
    :goto_5
    invoke-virtual {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->c()J

    move-result-wide v0

    cmp-long v0, v0, v11

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f0201e2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->o:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v1, v8}, Lcom/tencent/mm/ui/AnimImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->o:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/AnimImageView;->b()V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->c()J

    move-result-wide v2

    cmp-long v2, v2, v11

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->r:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->q:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->p:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/AnimImageView;->b()V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->p:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v2, v8}, Lcom/tencent/mm/ui/AnimImageView;->setVisibility(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->k:Landroid/widget/TextView;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->o:Lcom/tencent/mm/ui/AnimImageView;

    float-to-int v3, v0

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/AnimImageView;->setWidth(I)V

    goto/16 :goto_2

    :cond_7
    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->r:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->q:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->p:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/AnimImageView;->b()V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->p:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v2, v8}, Lcom/tencent/mm/ui/AnimImageView;->setVisibility(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->k:Landroid/widget/TextView;

    float-to-int v3, v0

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v4, 0x7f0a009b

    new-array v5, v9, [Ljava/lang/Object;

    float-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->o:Lcom/tencent/mm/ui/AnimImageView;

    float-to-int v3, v0

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/AnimImageView;->setWidth(I)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->c()J

    move-result-wide v2

    cmp-long v2, v2, v11

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->q:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->k:Landroid/widget/TextView;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->r:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->o:Lcom/tencent/mm/ui/AnimImageView;

    float-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/AnimImageView;->setWidth(I)V

    goto/16 :goto_3

    :cond_9
    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->q:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->k:Landroid/widget/TextView;

    float-to-int v3, v0

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v4, 0x7f0a009b

    new-array v5, v9, [Ljava/lang/Object;

    float-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->o:Lcom/tencent/mm/ui/AnimImageView;

    float-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/AnimImageView;->setWidth(I)V

    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->r:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v10, v10, v10, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_5
.end method

.method private static b(I)I
    .locals 1

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x2

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_1
    const/16 v0, 0x3c

    if-ge p0, v0, :cond_2

    div-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_2
    const/16 v0, 0xcc

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/ChattingListAdapter;)Lcom/tencent/mm/ui/chatting/ChattingUI;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/tencent/mm/storage/MsgInfo;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {p1}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/storage/MsgInfo;->a(Landroid/database/Cursor;)V

    return-object p1
.end method

.method protected final a()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfoStorage;->d()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final a(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a_(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChatBgAttr;

    invoke-direct {v1, v0}, Lcom/tencent/mm/ui/chatting/ChatBgAttr;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->p:Lcom/tencent/mm/ui/chatting/ChatBgAttr;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->p(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->g:I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->m:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->f(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b:[S

    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChatBgAttr;

    invoke-direct {v1, v0}, Lcom/tencent/mm/ui/chatting/ChatBgAttr;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->p:Lcom/tencent/mm/ui/chatting/ChatBgAttr;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->p:Lcom/tencent/mm/ui/chatting/ChatBgAttr;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->f:I

    add-int/lit8 v0, v0, 0x12

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->f:I

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->f:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->g:I

    if-gt v0, v1, :cond_1

    const/16 v0, 0x12

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->g:I

    rem-int/lit8 v0, v0, 0x12

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->g:I

    return v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->f:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->g:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15

    invoke-virtual/range {p0 .. p1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/tencent/mm/storage/MsgInfo;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b:[S

    aget-short v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    add-int/lit8 v2, p1, -0x1

    aget-short v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v3

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v5

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->c()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v2

    const/16 v8, 0x2f

    if-eq v2, v8, :cond_6

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b:[S

    const/4 v3, 0x2

    aput-short v3, v2, p1

    :goto_0
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->l()Z

    move-result v5

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v6

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    :goto_1
    if-eqz v5, :cond_d

    if-eqz v2, :cond_c

    const/4 v1, 0x3

    :goto_2
    int-to-short v1, v1

    :goto_3
    aput-short v1, v3, v4

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b:[S

    aget-short v1, v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->h:Ljava/util/HashSet;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_2
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    const/4 v1, 0x1

    move v2, v1

    :goto_4
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v1

    const/16 v3, 0x2710

    if-ne v1, v3, :cond_15

    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_14

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/4 v3, 0x5

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f030031

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v3}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const v1, 0x7f07009e

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const v1, 0x7f0700a1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    const/4 v1, 0x5

    iput v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-static/range {p2 .. p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {v8}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    if-eqz v2, :cond_4a

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->p:Lcom/tencent/mm/ui/chatting/ChatBgAttr;

    if-eqz v1, :cond_4

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->p:Lcom/tencent/mm/ui/chatting/ChatBgAttr;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChatBgAttr;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->p:Lcom/tencent/mm/ui/chatting/ChatBgAttr;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChatBgAttr;->g()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const/high16 v2, 0x4000

    const v3, 0x3f99999a

    const v4, 0x3f99999a

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->p:Lcom/tencent/mm/ui/chatting/ChatBgAttr;

    invoke-virtual {v5}, Lcom/tencent/mm/ui/chatting/ChatBgAttr;->b()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_6
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->p:Lcom/tencent/mm/ui/chatting/ChatBgAttr;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChatBgAttr;->c()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const v2, 0x7f0200d7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_4
    :goto_7
    iget v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    packed-switch v1, :pswitch_data_0

    :cond_5
    :goto_8
    return-object p2

    :cond_6
    sub-long v8, v5, v3

    const-wide/32 v10, 0xea60

    cmp-long v2, v8, v10

    if-gez v2, :cond_8

    const/4 v2, 0x1

    :goto_9
    sub-long v3, v5, v3

    const-wide/32 v5, 0x2bf20

    div-long/2addr v3, v5

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-gez v3, :cond_9

    const/4 v3, 0x1

    :goto_a
    if-nez v2, :cond_7

    if-eqz v3, :cond_a

    :cond_7
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b:[S

    const/4 v3, 0x2

    aput-short v3, v2, p1

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    :cond_a
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b:[S

    const/4 v3, 0x1

    aput-short v3, v2, p1

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_d
    if-eqz v6, :cond_f

    if-eqz v2, :cond_e

    const/4 v1, 0x7

    :goto_b
    int-to-short v1, v1

    goto/16 :goto_3

    :cond_e
    const/4 v1, 0x6

    goto :goto_b

    :cond_f
    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->q()Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v2, :cond_10

    const/16 v1, 0xf

    :goto_c
    int-to-short v1, v1

    goto/16 :goto_3

    :cond_10
    const/16 v1, 0xe

    goto :goto_c

    :cond_11
    if-eqz v2, :cond_12

    const/4 v1, 0x4

    :goto_d
    int-to-short v1, v1

    goto/16 :goto_3

    :cond_12
    const/4 v1, 0x2

    goto :goto_d

    :cond_13
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_4

    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    goto/16 :goto_5

    :cond_15
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    const-string v1, "MicroMsg.ChattingListAdapter"

    const-string v3, "getView: not found this type"

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->l()Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz p2, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_17

    :cond_16
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/4 v3, 0x1

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f03002e

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/ui/chatting/ViewHolder;->a(ZLandroid/view/View;)Lcom/tencent/mm/ui/chatting/ViewHolder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    goto/16 :goto_5

    :cond_18
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->q()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz p2, :cond_19

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/16 v3, 0xe

    if-eq v1, v3, :cond_1a

    :cond_19
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/16 v3, 0xe

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f03002a

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/ui/chatting/ViewHolder;->b(ZLandroid/view/View;)Lcom/tencent/mm/ui/chatting/ViewHolder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1b
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v1

    if-eqz v1, :cond_20

    if-eqz p2, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_1e

    :cond_1c
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/4 v3, 0x6

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f030030

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/ui/chatting/ViewHolder;->c(ZLandroid/view/View;)Lcom/tencent/mm/ui/chatting/ViewHolder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_e
    iget-object v3, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->k:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/AutoPlay;->g()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-eqz v1, :cond_1d

    invoke-static {v7}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->c(Lcom/tencent/mm/storage/MsgInfo;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1d
    const/16 v1, 0x8

    :goto_f
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    goto :goto_e

    :cond_1f
    const/4 v1, 0x0

    goto :goto_f

    :cond_20
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->m()Z

    move-result v1

    if-eqz v1, :cond_23

    if-eqz p2, :cond_21

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_22

    :cond_21
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/16 v3, 0x8

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f03002d

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v3}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const v1, 0x7f07009e

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const v1, 0x7f0700a0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    const v1, 0x7f0700ae

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->i:Landroid/widget/TextView;

    const v1, 0x7f0700a1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    iput v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    goto/16 :goto_5

    :cond_23
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v1

    const/16 v3, 0x25

    if-eq v1, v3, :cond_24

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v1

    const/16 v3, 0x28

    if-ne v1, v3, :cond_27

    :cond_24
    if-eqz p2, :cond_25

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/16 v3, 0x9

    if-eq v1, v3, :cond_26

    :cond_25
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/16 v3, 0x9

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f03002b

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v3}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const v1, 0x7f0700aa

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->e:Landroid/widget/ImageView;

    const v1, 0x7f07009e

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const v1, 0x7f0700a2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->m:Landroid/widget/TextView;

    const v1, 0x7f0700ac

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->l:Landroid/widget/TextView;

    const v1, 0x7f0700a6

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    const v1, 0x7f0700a7

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->n:Landroid/widget/TextView;

    const v1, 0x7f07009f

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/16 v1, 0x9

    iput v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_26
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    goto/16 :goto_5

    :cond_27
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->p()Z

    move-result v1

    if-eqz v1, :cond_2a

    if-eqz p2, :cond_28

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/16 v3, 0xa

    if-eq v1, v3, :cond_29

    :cond_28
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/16 v3, 0xa

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f03002f

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/ui/chatting/ViewHolder;->e(ZLandroid/view/View;)Lcom/tencent/mm/ui/chatting/ViewHolder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_29
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    goto/16 :goto_5

    :cond_2a
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v1

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_2d

    if-eqz p2, :cond_2b

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/16 v3, 0xc

    if-eq v1, v3, :cond_2c

    :cond_2b
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/16 v3, 0xc

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f030029

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v3}, Lcom/tencent/mm/ui/chatting/ViewHolder;->a(Landroid/view/View;Z)Lcom/tencent/mm/ui/chatting/ViewHolder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2c
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    goto/16 :goto_5

    :cond_2d
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v1

    const/16 v3, 0x30

    if-ne v1, v3, :cond_30

    if-eqz p2, :cond_2e

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/16 v3, 0x10

    if-eq v1, v3, :cond_2f

    :cond_2e
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/16 v3, 0x10

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f03002c

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v3}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const v1, 0x7f07009f

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const v1, 0x7f07009e

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const v1, 0x7f0700ad

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    const v1, 0x7f070029

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->x:Landroid/widget/ProgressBar;

    const/16 v1, 0x10

    iput v1, v3, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2f
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    goto/16 :goto_5

    :cond_30
    if-eqz p2, :cond_31

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_32

    :cond_31
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/4 v3, 0x2

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f030028

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/ui/chatting/ViewHolder;->d(ZLandroid/view/View;)Lcom/tencent/mm/ui/chatting/ViewHolder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_32
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->n()Z

    move-result v1

    if-eqz v1, :cond_35

    if-eqz p2, :cond_33

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/16 v3, 0xd

    if-eq v1, v3, :cond_34

    :cond_33
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/16 v3, 0xd

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f030033

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v3}, Lcom/tencent/mm/ui/chatting/ViewHolder;->a(Landroid/view/View;Z)Lcom/tencent/mm/ui/chatting/ViewHolder;

    move-result-object v1

    const/16 v3, 0xd

    iput v3, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_34
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    goto/16 :goto_5

    :cond_35
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->l()Z

    move-result v1

    if-eqz v1, :cond_38

    if-eqz p2, :cond_36

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_37

    :cond_36
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/4 v3, 0x3

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f030036

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/ui/chatting/ViewHolder;->a(ZLandroid/view/View;)Lcom/tencent/mm/ui/chatting/ViewHolder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_10
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->e()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    const-string v3, "MicroMsg.ChattingListAdapter"

    const-string v4, "getMsgStateResId: not found this state"

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    :goto_11
    const/4 v4, -0x1

    if-eq v3, v4, :cond_47

    iget-object v4, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->a:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v5, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->a:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_37
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    goto :goto_10

    :cond_38
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->q()Z

    move-result v1

    if-eqz v1, :cond_3b

    if-eqz p2, :cond_39

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/16 v3, 0xf

    if-eq v1, v3, :cond_3a

    :cond_39
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/16 v3, 0xf

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f030034

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/ui/chatting/ViewHolder;->b(ZLandroid/view/View;)Lcom/tencent/mm/ui/chatting/ViewHolder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_10

    :cond_3a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    goto :goto_10

    :cond_3b
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v1

    if-eqz v1, :cond_3e

    if-eqz p2, :cond_3c

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_3d

    :cond_3c
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/4 v3, 0x7

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f030038

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/ui/chatting/ViewHolder;->c(ZLandroid/view/View;)Lcom/tencent/mm/ui/chatting/ViewHolder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_3d
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    goto/16 :goto_10

    :cond_3e
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->p()Z

    move-result v1

    if-eqz v1, :cond_41

    if-eqz p2, :cond_3f

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/16 v3, 0xb

    if-eq v1, v3, :cond_40

    :cond_3f
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/16 v3, 0xb

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f030037

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/ui/chatting/ViewHolder;->e(ZLandroid/view/View;)Lcom/tencent/mm/ui/chatting/ViewHolder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_40
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    goto/16 :goto_5

    :cond_41
    if-eqz p2, :cond_42

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_43

    :cond_42
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a:[S

    const/4 v3, 0x4

    aput-short v3, v1, p1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f030032

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/ViewHolder;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/ui/chatting/ViewHolder;->d(ZLandroid/view/View;)Lcom/tencent/mm/ui/chatting/ViewHolder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_43
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/chatting/ViewHolder;

    goto/16 :goto_10

    :pswitch_2
    const/4 v3, -0x1

    goto/16 :goto_11

    :pswitch_3
    sget-boolean v3, Lcom/tencent/mm/test/Test;->b:Z

    if-eqz v3, :cond_44

    const v3, 0x7f0201e6

    goto/16 :goto_11

    :cond_44
    const/4 v3, -0x1

    goto/16 :goto_11

    :pswitch_4
    sget-boolean v3, Lcom/tencent/mm/test/Test;->b:Z

    if-eqz v3, :cond_45

    const v3, 0x7f0201e3

    goto/16 :goto_11

    :cond_45
    const/4 v3, -0x1

    goto/16 :goto_11

    :pswitch_5
    sget-boolean v3, Lcom/tencent/mm/test/Test;->b:Z

    if-eqz v3, :cond_46

    const v3, 0x7f0201e4

    goto/16 :goto_11

    :cond_46
    const/4 v3, -0x1

    goto/16 :goto_11

    :pswitch_6
    const v3, 0x7f0201e2

    goto/16 :goto_11

    :cond_47
    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ViewHolder;->a:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_48
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_6

    :cond_49
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_7

    :cond_4a
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :pswitch_7
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->j:Lcom/tencent/mm/ui/chatting/SpanUtil;

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/widget/TextView;)V

    goto/16 :goto_8

    :pswitch_8
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->c:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v2

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_12
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->n:Z

    if-eqz v1, :cond_4c

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_94

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_94

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_94

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_13
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->i:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    :cond_4b
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201f3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_12

    :cond_4c
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->E(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_14
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_4d
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_14

    :pswitch_9
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->i:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->c:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v2

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_15
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v2

    if-eqz v2, :cond_53

    invoke-virtual {v2}, Lcom/tencent/mm/modelimage/ImgInfo;->l()Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->e()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_50

    :cond_4e
    const/4 v1, 0x1

    :goto_16
    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->g:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/modelimage/ImgInfo;->n()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->f:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_51

    const/4 v2, 0x4

    :goto_17
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_52

    const/4 v1, 0x4

    :goto_18
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_4f
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f0201f3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_15

    :cond_50
    const/4 v1, 0x0

    goto :goto_16

    :cond_51
    const/4 v2, 0x0

    goto :goto_17

    :cond_52
    const/4 v1, 0x0

    goto :goto_18

    :cond_53
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f0201e2

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->f:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :pswitch_a
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v1

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v3

    if-eqz v3, :cond_55

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->a(Ljava/lang/String;)Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->d()Z

    move-result v1

    if-nez v1, :cond_54

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/chatting/EmojiView;->a(J)V

    :cond_54
    invoke-virtual {v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->d()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v9}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->d()Z

    move-result v1

    if-nez v1, :cond_56

    iget-object v4, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->z:Lcom/tencent/mm/ui/chatting/EmojiView;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    const/4 v5, 0x1

    move-wide v13, v1

    move-object v2, v3

    move-object v1, v4

    move-wide v3, v13

    :goto_19
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/EmojiView;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;JZZ)V

    invoke-virtual {v9}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->d()Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {v9}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->e()V

    invoke-virtual {v9}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v7}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    :cond_55
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->n:Z

    if-eqz v1, :cond_59

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_93

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_93

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_93

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1a
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->i:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    :cond_56
    invoke-virtual {v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->d()Z

    move-result v1

    if-eqz v1, :cond_58

    iget-object v4, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->z:Lcom/tencent/mm/ui/chatting/EmojiView;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    :cond_57
    const/4 v5, 0x0

    move-wide v13, v1

    move-object v2, v3

    move-object v1, v4

    move-wide v3, v13

    goto :goto_19

    :cond_58
    iget-object v4, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->z:Lcom/tencent/mm/ui/chatting/EmojiView;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->j()I

    move-result v5

    sget v6, Lcom/tencent/mm/modelemoji/EmojiInfo;->i:I

    if-ne v5, v6, :cond_57

    invoke-static {}, Lcom/tencent/mm/ui/chatting/EmojiView;->b()J

    move-result-wide v5

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v10

    cmp-long v5, v5, v10

    if-gtz v5, :cond_57

    const/4 v5, 0x1

    move-wide v13, v1

    move-object v2, v3

    move-object v1, v4

    move-wide v3, v13

    goto/16 :goto_19

    :cond_59
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->E(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1b
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_5a
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_b
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->i:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v1

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v9

    if-eqz v9, :cond_62

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->a(Ljava/lang/String;)Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->d()Z

    move-result v1

    if-nez v1, :cond_5b

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/chatting/EmojiView;->a(J)V

    :cond_5b
    invoke-virtual {v9}, Lcom/tencent/mm/modelemoji/EmojiInfo;->d()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual {v10}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->d()Z

    move-result v1

    if-nez v1, :cond_5e

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->z:Lcom/tencent/mm/ui/chatting/EmojiView;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    const/4 v5, 0x1

    move-wide v13, v1

    move-object v2, v9

    move-object v1, v3

    move-wide v3, v13

    :goto_1c
    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/mm/ui/chatting/EmojiView;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;JZZ)V

    invoke-virtual {v10}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->d()Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-virtual {v10}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->e()V

    invoke-virtual {v10}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v7}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    :cond_5c
    invoke-virtual {v9}, Lcom/tencent/mm/modelemoji/EmojiInfo;->m()I

    move-result v1

    sget v2, Lcom/tencent/mm/modelemoji/EmojiInfo;->l:I

    if-eq v1, v2, :cond_5d

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->e()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_60

    :cond_5d
    const/4 v1, 0x1

    :goto_1d
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->f:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_61

    const/4 v1, 0x4

    :goto_1e
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_8

    :cond_5e
    invoke-virtual {v9}, Lcom/tencent/mm/modelemoji/EmojiInfo;->d()Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->z:Lcom/tencent/mm/ui/chatting/EmojiView;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    move-object v4, v3

    move-object v3, v9

    :goto_1f
    const/4 v5, 0x0

    move-wide v13, v1

    move-object v2, v3

    move-object v1, v4

    move-wide v3, v13

    goto :goto_1c

    :cond_5f
    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->z:Lcom/tencent/mm/ui/chatting/EmojiView;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    invoke-virtual {v9}, Lcom/tencent/mm/modelemoji/EmojiInfo;->j()I

    move-result v4

    sget v5, Lcom/tencent/mm/modelemoji/EmojiInfo;->i:I

    if-ne v4, v5, :cond_92

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v4

    invoke-static {}, Lcom/tencent/mm/ui/chatting/EmojiView;->b()J

    move-result-wide v11

    cmp-long v4, v4, v11

    if-ltz v4, :cond_92

    const/4 v5, 0x1

    move-wide v13, v1

    move-object v2, v9

    move-object v1, v3

    move-wide v3, v13

    goto :goto_1c

    :cond_60
    const/4 v1, 0x0

    goto :goto_1d

    :cond_61
    const/4 v1, 0x0

    goto :goto_1e

    :cond_62
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->f:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_8

    :pswitch_c
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->l(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$MailContent;

    move-result-object v1

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$MailContent;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$MailContent;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$MailContent;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$MailContent;->e()Z

    move-result v1

    if-eqz v1, :cond_63

    const v1, 0x7f02015d

    :goto_20
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_8

    :cond_63
    const/4 v1, 0x0

    goto :goto_20

    :pswitch_d
    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->n:Z

    if-eqz v1, :cond_65

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_21
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->n(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$FriendContent;

    move-result-object v3

    if-eqz v3, :cond_64

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_64

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_66

    :cond_64
    const-string v1, "MicroMsg.ChattingListAdapter"

    const-string v2, "getView : parse possible friend msg failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_65
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_66
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_67

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_91

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_91

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_22
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->m:Landroid/widget/TextView;

    const v4, 0x7f0a0169

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->m:Landroid/widget/TextView;

    const v4, 0x7f020300

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->l:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v2, v4, v5}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    iget-object v4, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->l:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->n:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->i:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->c:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_67
    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :pswitch_e
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->n(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$FriendContent;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_68

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_69

    :cond_68
    const-string v1, "MicroMsg.ChattingListAdapter"

    const-string v2, "getView : parse possible friend msg failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_69
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->m:Landroid/widget/TextView;

    const v3, 0x7f0a0169

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->m:Landroid/widget/TextView;

    const v3, 0x7f020300

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->l:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->n:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->c:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :pswitch_f
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_6d

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->m(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$VerifyContent;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6a

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6b

    :cond_6a
    const-string v1, "MicroMsg.ChattingListAdapter"

    const-string v2, "getView : parse verify msg failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_6b
    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->h()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    :pswitch_10
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->m:Landroid/widget/TextView;

    const v3, 0x7f0a015e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->e:Landroid/widget/ImageView;

    const v3, 0x7f0200f5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_23
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6c

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->l:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v4, 0x7f0a0309

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :pswitch_11
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->m:Landroid/widget/TextView;

    const v3, 0x7f0a015a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->e:Landroid/widget/ImageView;

    const v3, 0x7f0200f3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_23

    :pswitch_12
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->m:Landroid/widget/TextView;

    const v3, 0x7f0a015b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->e:Landroid/widget/ImageView;

    const v3, 0x7f0200f4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_23

    :pswitch_13
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->m:Landroid/widget/TextView;

    const v3, 0x7f0a0351

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->e:Landroid/widget/ImageView;

    const v3, 0x7f020253

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_23

    :pswitch_14
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->m:Landroid/widget/TextView;

    const v3, 0x7f0a015c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->e:Landroid/widget/ImageView;

    const v3, 0x7f0200f1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_23

    :cond_6c
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->l:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_6d
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_71

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->n(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$FriendContent;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6e

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6f

    :cond_6e
    const-string v1, "MicroMsg.ChattingListAdapter"

    const-string v2, "getView : parse possible friend msg failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_6f
    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->g()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->m:Landroid/widget/TextView;

    const v3, 0x7f0a0163

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->e:Landroid/widget/ImageView;

    const v3, 0x7f020251

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_24
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_70

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->l:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v4, 0x7f0a0309

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :sswitch_0
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->m:Landroid/widget/TextView;

    const v3, 0x7f0a0161

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->e:Landroid/widget/ImageView;

    const v3, 0x7f020252

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    :sswitch_1
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->m:Landroid/widget/TextView;

    const v3, 0x7f0a0162

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->e:Landroid/widget/ImageView;

    const v3, 0x7f020250

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    :sswitch_2
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->m:Landroid/widget/TextView;

    const v3, 0x7f0a0160

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->e:Landroid/widget/ImageView;

    const v3, 0x7f0200f2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    :cond_70
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->l:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_71
    const-string v1, "MicroMsg.ChattingListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FROM_FMESSAGE did not include this type, msgType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_15
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->n:Z

    if-eqz v1, :cond_72

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_90

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_90

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_90

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_25
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->o:Lcom/tencent/mm/ui/AnimImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/AnimImageView;->a(Z)V

    invoke-direct {p0, v8, v7}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Lcom/tencent/mm/ui/chatting/ViewHolder;Lcom/tencent/mm/storage/MsgInfo;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->i:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    :cond_72
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->E(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_26
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_73
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_26

    :pswitch_16
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->i:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->o:Lcom/tencent/mm/ui/AnimImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/AnimImageView;->a(Z)V

    invoke-direct {p0, v8, v7}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Lcom/tencent/mm/ui/chatting/ViewHolder;Lcom/tencent/mm/storage/MsgInfo;)V

    goto/16 :goto_8

    :pswitch_17
    iget v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_75

    const/4 v1, 0x1

    :goto_27
    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelvideo/VideoLogic;->e(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v2

    if-nez v2, :cond_74

    new-instance v2, Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-direct {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;-><init>()V

    :cond_74
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v3

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v5

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v4, v3, v5, v6}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(Ljava/lang/String;FLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_77

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v3

    if-nez v3, :cond_76

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->c:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v5, 0x7f0202e6

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_28
    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->r()I

    move-result v3

    if-nez v3, :cond_78

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->A:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_29
    if-eqz v1, :cond_7f

    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->n:Z

    if-eqz v1, :cond_79

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v1

    :goto_2a
    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->E(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2b
    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->t:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Util;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->u:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->m()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/mm/platformtools/Util;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v3

    const/16 v4, 0xc7

    if-ne v3, v4, :cond_7b

    iget-object v4, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->s:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v6, 0x7f0202ea

    invoke-virtual {v5, v6}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2c
    const/16 v4, 0x70

    if-ne v3, v4, :cond_7c

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->v:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->w:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->x:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->y:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->x:Landroid/widget/ProgressBar;

    invoke-static {v2}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Lcom/tencent/mm/modelvideo/VideoInfo;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v2, "MicroMsg.ChattingListAdapter"

    const-string v3, "status begin"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->invalidate()V

    :goto_2d
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->i:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->v:Landroid/widget/ImageView;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoPauseClickListener;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoPauseClickListener;-><init>(Lcom/tencent/mm/ui/chatting/ChattingListAdapter;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->w:Landroid/widget/ImageView;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;-><init>(Lcom/tencent/mm/ui/chatting/ChattingListAdapter;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    :cond_75
    const/4 v1, 0x0

    goto/16 :goto_27

    :cond_76
    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->c:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v5, 0x7f020104

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_28

    :cond_77
    iget-object v4, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_28

    :cond_78
    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->A:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_29

    :cond_79
    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2a

    :cond_7a
    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    invoke-static {v3, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_2b

    :cond_7b
    iget-object v4, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->s:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v6, 0x7f0202dc

    invoke-virtual {v5, v6}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2c

    :cond_7c
    const/16 v2, 0x71

    if-eq v3, v2, :cond_7d

    const/16 v2, 0xc6

    if-ne v3, v2, :cond_7e

    :cond_7d
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->w:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->v:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->y:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->x:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v2, "MicroMsg.ChattingListAdapter"

    const-string v3, "status pause"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_7e
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->v:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->w:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->y:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->x:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v2, "MicroMsg.ChattingListAdapter"

    const-string v3, "status gone"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_7f
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->t:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Util;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->u:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->m()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v1

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->s:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->o:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v5, 0x7f0202ea

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x68

    if-eq v1, v3, :cond_80

    const/16 v3, 0x67

    if-ne v1, v3, :cond_82

    :cond_80
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->v:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->w:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->x:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->y:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v1

    if-nez v1, :cond_81

    const/4 v1, 0x0

    :goto_2e
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v1, "MicroMsg.ChattingListAdapter"

    const-string v2, "status begin"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->invalidate()V

    :goto_2f
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->i:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->v:Landroid/widget/ImageView;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoPauseClickListener;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoPauseClickListener;-><init>(Lcom/tencent/mm/ui/chatting/ChattingListAdapter;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->w:Landroid/widget/ImageView;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter$VideoStartClickListener;-><init>(Lcom/tencent/mm/ui/chatting/ChattingListAdapter;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    :cond_81
    const-string v1, "MicroMsg.VideoLogic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUploadProgress :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->e()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v2

    div-int/2addr v1, v2

    goto :goto_2e

    :cond_82
    const/16 v2, 0x69

    if-eq v1, v2, :cond_83

    const/16 v2, 0xc6

    if-ne v1, v2, :cond_84

    :cond_83
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->w:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->v:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->y:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->x:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v1, "MicroMsg.ChattingListAdapter"

    const-string v2, "status pause"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    :cond_84
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->v:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->w:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->y:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->x:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v1, "MicroMsg.ChattingListAdapter"

    const-string v2, "status gone"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    :pswitch_18
    iget v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->B:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_85

    const/4 v1, 0x1

    :goto_30
    if-eqz v1, :cond_88

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->n:Z

    if-eqz v1, :cond_86

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v4

    const/4 v1, -0x1

    if-eq v4, v1, :cond_8f

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8e

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_31
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    :goto_32
    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_33
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->j:Lcom/tencent/mm/ui/chatting/SpanUtil;

    iget-object v3, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/widget/TextView;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->i:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    invoke-virtual {v3, v2}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    :cond_85
    const/4 v1, 0x0

    goto :goto_30

    :cond_86
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->E(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_87

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_34
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->h:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_33

    :cond_87
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_34

    :cond_88
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->i:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->e()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_89

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->e()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8a

    :cond_89
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->f:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_35
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->j:Lcom/tencent/mm/ui/chatting/SpanUtil;

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/widget/TextView;)V

    goto/16 :goto_8

    :cond_8a
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->f:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_35

    :pswitch_19
    if-eqz v8, :cond_5

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8d

    invoke-virtual {v7}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_8d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8d

    :goto_36
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->i:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->S()Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->a(Lcom/tencent/mm/storage/MsgInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8b

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    :cond_8b
    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->x:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_8c
    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->x:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v2, "MicroMsg.ChattingListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v8, Lcom/tencent/mm/ui/chatting/ViewHolder;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_8d
    move-object v1, v2

    goto :goto_36

    :cond_8e
    move-object v1, v2

    goto/16 :goto_31

    :cond_8f
    move-object v1, v3

    goto/16 :goto_32

    :cond_90
    move-object v1, v2

    goto/16 :goto_25

    :cond_91
    move-object v1, v2

    goto/16 :goto_22

    :cond_92
    move-object v4, v3

    move-object v3, v9

    goto/16 :goto_1f

    :cond_93
    move-object v1, v2

    goto/16 :goto_1a

    :cond_94
    move-object v1, v2

    goto/16 :goto_13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_18
        :pswitch_9
        :pswitch_18
        :pswitch_7
        :pswitch_15
        :pswitch_16
        :pswitch_c
        :pswitch_f
        :pswitch_17
        :pswitch_17
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_b
        :pswitch_19
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_14
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method
