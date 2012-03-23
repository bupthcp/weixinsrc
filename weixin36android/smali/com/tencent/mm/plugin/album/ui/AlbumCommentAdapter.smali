.class Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;


# instance fields
.field private a:Ljava/util/Map;

.field private b:[Ljava/lang/String;

.field private f:Landroid/view/View;


# direct methods
.method static synthetic a(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;)V
    .locals 8

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->f:Landroid/view/View;

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/tencent/mm/plugin/album/model/NetSceneAlbumPhotoComment;

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c:Ljava/lang/Object;

    check-cast v2, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->d()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c:Ljava/lang/Object;

    check-cast v3, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c:Ljava/lang/Object;

    check-cast v4, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c:Ljava/lang/Object;

    check-cast v5, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    invoke-virtual {v5}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->g()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c:Ljava/lang/Object;

    check-cast v6, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    invoke-virtual {v6}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->f()I

    move-result v6

    iget-object v7, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c:Ljava/lang/Object;

    check-cast v7, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->e()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/plugin/album/model/NetSceneAlbumPhotoComment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->d:Landroid/content/Context;

    const-string v1, "sending"

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$2;

    invoke-direct {v4, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$2;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->a(I)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->b(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->c(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->b(I)V

    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->c(I)V

    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->d(I)V

    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->e(I)V

    const/16 v0, 0x8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->d(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->f(I)V

    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->e(Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->g(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->n()V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->U()Lcom/tencent/mm/plugin/album/model/AlbumCommentStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumCommentStorage;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->a(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const v5, 0x7f070013

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;

    if-nez v0, :cond_1

    :cond_0
    new-instance v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->d:Landroid/content/Context;

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f070010

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f070015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->f:Landroid/widget/TextView;

    const v0, 0x7f070016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->g:Landroid/widget/TextView;

    const v0, 0x7f070017

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->h:Landroid/widget/TextView;

    const v0, 0x7f070011

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    const v0, 0x7f070012

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    const v0, 0x7f070014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    const v0, 0x7f070018

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->i:Landroid/widget/ImageView;

    const v0, 0x7f070019

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->j:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c:Ljava/lang/Object;

    iget-object v2, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->b:[Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->e()I

    move-result v0

    aget-object v0, v4, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    const v1, 0x7f0201b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;

    iget-object v1, v0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/AvatarDrawable;

    if-nez v0, :cond_5

    new-instance v0, Lcom/tencent/mm/ui/AvatarDrawable;

    iget-object v2, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mm/ui/AvatarDrawable;->a()I

    move-result v3

    invoke-static {}, Lcom/tencent/mm/ui/AvatarDrawable;->a()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/tencent/mm/ui/AvatarDrawable;-><init>(Landroid/widget/ImageView;II)V

    iget-object v2, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/AvatarDrawable;->a(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->f()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/AvatarDrawable;

    if-nez v0, :cond_4

    new-instance v0, Lcom/tencent/mm/ui/AvatarDrawable;

    iget-object v2, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mm/ui/AvatarDrawable;->a()I

    move-result v3

    invoke-static {}, Lcom/tencent/mm/ui/AvatarDrawable;->a()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/tencent/mm/ui/AvatarDrawable;-><init>(Landroid/widget/ImageView;II)V

    iget-object v2, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v2, v0

    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/AvatarDrawable;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$ViewHolder;->j:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_4
    move-object v2, v0

    goto :goto_3

    :cond_5
    move-object v2, v0

    goto :goto_2
.end method
