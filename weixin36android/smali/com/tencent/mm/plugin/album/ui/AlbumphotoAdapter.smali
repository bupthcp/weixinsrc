.class public Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private f:Ljava/lang/String;

.field private g:Lcom/tencent/mm/plugin/album/ui/IAlbumEvent;

.field private h:Ljava/lang/String;

.field private i:Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/plugin/album/ui/IAlbumEvent;)V
    .locals 1

    new-instance v0, Lcom/tencent/mm/plugin/album/model/AlbumInfo;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->g:Lcom/tencent/mm/plugin/album/ui/IAlbumEvent;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->b:I

    invoke-direct {p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/plugin/album/ui/IAlbumEvent;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/tencent/mm/plugin/album/model/AlbumInfo;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->g:Lcom/tencent/mm/plugin/album/ui/IAlbumEvent;

    iput-object p3, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->a:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->b:I

    invoke-direct {p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    new-instance v0, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->g:Lcom/tencent/mm/plugin/album/ui/IAlbumEvent;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;-><init>(Landroid/content/Context;Lcom/tencent/mm/plugin/album/ui/IAlbumEvent;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->i:Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->d:Landroid/content/Context;

    const-string v1, "com.tencent.mm_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->h:Ljava/lang/String;

    const-string v0, "MicroMsg.AlbumphotoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlbumDayAdapter : userName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " country: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/tencent/mm/plugin/album/model/AlbumInfo;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/plugin/album/model/AlbumInfo;

    invoke-direct {p1}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;-><init>()V

    const-string v0, "MicroMsg.AlbumphotoAdapter"

    const-string v1, "new AlbumInfo"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->a(Landroid/database/Cursor;)V

    return-object p1
.end method

.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->n()V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->J()Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;->b()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->a(Landroid/database/Cursor;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->J()Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;->c(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->a(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/model/AlbumInfo;

    if-nez p2, :cond_2

    new-instance v2, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->d:Landroid/content/Context;

    const v3, 0x7f03000e

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f07001e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f070033

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f070032

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    const v1, 0x7f070034

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    const v1, 0x7f070036

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->f:Landroid/widget/TextView;

    const v1, 0x7f070035

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->e:Landroid/widget/TextView;

    const v1, 0x7f070023

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->g:Landroid/widget/TextView;

    const v1, 0x7f070038

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->h:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "albumb_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->h:Landroid/widget/ImageView;

    const v4, 0x7f020013

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->g:Lcom/tencent/mm/plugin/album/ui/IAlbumEvent;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/mm/plugin/album/ui/IAlbumEvent;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->d()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->h:Ljava/lang/String;

    const-string v5, "zh_TW"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->h:Ljava/lang/String;

    const-string v5, "zh_HK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->g()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->i:Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;->a(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->i:Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;

    invoke-virtual {v1, p1}, Lcom/tencent/mm/plugin/album/ui/AlbumClickListeners;->a(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;

    goto/16 :goto_0

    :cond_3
    iget-object v3, v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter$ViewHolder;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->h:Ljava/lang/String;

    const-string v5, "en"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->h:Ljava/lang/String;

    const-string v5, "zh_CN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
