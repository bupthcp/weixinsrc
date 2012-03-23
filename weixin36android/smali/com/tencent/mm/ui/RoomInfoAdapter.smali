.class public Lcom/tencent/mm/ui/RoomInfoAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:[I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Ljava/util/List;

.field private g:Ljava/util/Set;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->a:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->f:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->g:Ljava/util/Set;

    iput v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->h:I

    iput v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    iput v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->j:I

    iput-object p1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->b:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->c:I

    iput p4, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->j:I

    iput-boolean v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->e:Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoAdapter;->c()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "MicroMsg.RoomInfoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initData roomID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " roomType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->j:I

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->e:Z

    :cond_2
    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->c:I

    if-ne v0, v3, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->g:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->j:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->a:[I

    iget v2, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    and-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->h:I

    :goto_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->h:I

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/ChatroomMembersLogic;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "MicroMsg.RoomInfoAdapter"

    const-string v1, "RoomInfo chatUserNames is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_6
    new-instance v2, Lcom/tencent/mm/storage/Contact;

    invoke-direct {v2}, Lcom/tencent/mm/storage/Contact;-><init>()V

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/Contact;->a(Landroid/database/Cursor;)V

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->g:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->j:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->a:[I

    iget v2, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    and-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->h:I

    :goto_3
    const-string v0, "MicroMsg.RoomInfoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number Size  contactSize :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " realySize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->h:I

    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->e:Z

    return v0
.end method

.method public final a(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->e:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    if-ge p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->e:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoAdapter;->c()V

    return-void
.end method

.method public final b(I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->j:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->c:I

    if-ne v2, v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v2, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->e:Z

    if-nez v2, :cond_3

    iget v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    if-ge p1, v1, :cond_1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->e:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final c(I)Z
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)Z
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->h:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v10, 0x8

    const v9, 0x7f0201cf

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/RoomInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/Contact;

    move-object v2, v0

    move v3, v4

    :goto_0
    if-nez p2, :cond_3

    new-instance v1, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->d:Landroid/content/Context;

    const v7, 0x7f0300c7

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f07021f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    const v0, 0x7f070220

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f070221

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->c:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_1
    if-nez v3, :cond_5

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->d:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    const v5, 0x7f020101

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-boolean v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->e:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_2
    iput v3, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->d:I

    return-object p2

    :cond_1
    iget v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->i:I

    if-ne p1, v1, :cond_2

    move-object v2, v0

    move v3, v5

    goto/16 :goto_0

    :cond_2
    move-object v2, v0

    move v3, v6

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    if-ne v3, v5, :cond_7

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/tencent/mm/ui/RoomInfoAdapter;->e:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    const v2, 0x7f02025e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_7
    if-ne v3, v6, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lcom/tencent/mm/ui/RoomInfoAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method
