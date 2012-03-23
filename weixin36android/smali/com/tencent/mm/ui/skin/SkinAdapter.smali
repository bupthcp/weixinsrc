.class Lcom/tencent/mm/ui/skin/SkinAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;


# instance fields
.field private a:Lcom/tencent/mm/ui/skin/SkinSelectUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/skin/SkinSelectUI;)V
    .locals 1

    new-instance v0, Lcom/tencent/mm/modeltheme/ThemeInfo;

    invoke-direct {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/mm/ui/skin/SkinAdapter;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/tencent/mm/modeltheme/ThemeInfo;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/modeltheme/ThemeInfo;

    invoke-direct {p1}, Lcom/tencent/mm/modeltheme/ThemeInfo;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/modeltheme/ThemeInfo;->a(Landroid/database/Cursor;)V

    return-object p1
.end method

.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/skin/SkinAdapter;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/skin/SkinAdapter;->a(Landroid/database/Cursor;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/skin/SkinAdapter;->k()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v11, 0x8

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinAdapter;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->e()Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_1

    new-instance v3, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;

    invoke-direct {v3}, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinAdapter;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    const v4, 0x7f0300ec

    const/4 v6, 0x0

    invoke-static {v0, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f070284

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v3, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->a:Landroid/widget/Button;

    const v0, 0x7f07027e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    const v0, 0x7f070281

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f070282

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->f:Landroid/widget/TextView;

    const v0, 0x7f070280

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v3, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->d:Landroid/widget/ProgressBar;

    const v0, 0x7f070283

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->e:Landroid/widget/TextView;

    const v0, 0x7f070285

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    const v0, 0x7f07027f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, p2

    :goto_0
    if-nez p1, :cond_4

    iget-object v0, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->h:Landroid/widget/TextView;

    const v6, 0x7f0a0032

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->a:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/tencent/mm/ui/skin/SkinAdapter;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    const v7, 0x7f02013b

    invoke-virtual {v6, v7}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/skin/SkinAdapter;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinAdapter;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    const v1, 0x7f0201fe

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-eqz v5, :cond_0

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    move-object v0, v3

    :goto_3
    return-object v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;

    move-object v4, v0

    move-object v3, p2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinAdapter;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    const v1, 0x7f020201

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v0, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    if-lez p1, :cond_5

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/skin/SkinAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modeltheme/ThemeInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->g()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_5
    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/skin/SkinAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_8

    iget-object v1, p0, Lcom/tencent/mm/ui/skin/SkinAdapter;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    const v2, 0x7f0201fc

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->c(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v3

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :pswitch_0
    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->a:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->a:Landroid/widget/Button;

    const v6, 0x7f0a002b

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :pswitch_1
    iget-object v6, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v6, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->c:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tencent/mm/ui/skin/SkinAdapter;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    const v8, 0x7f0a00a6

    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->e()I

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->a:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->a:Landroid/widget/Button;

    const v6, 0x7f0a0015

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->e()I

    move-result v10

    div-int/2addr v1, v10

    goto :goto_8

    :pswitch_2
    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->a:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->a:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->a:Landroid/widget/Button;

    const v6, 0x7f0a002a

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->e()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcom/tencent/mm/platformtools/Util;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :pswitch_4
    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->a:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :pswitch_5
    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->a:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->e:Landroid/widget/TextView;

    const v6, 0x7f0a002c

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_7
    iget-object v1, v4, Lcom/tencent/mm/ui/skin/SkinAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/ui/skin/SkinAdapter;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    const v2, 0x7f0201fd

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method
