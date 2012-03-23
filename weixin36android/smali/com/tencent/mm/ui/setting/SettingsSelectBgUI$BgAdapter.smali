.class Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private synthetic f:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->f:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    new-instance v0, Lcom/tencent/mm/modelpackage/PackageInfo;

    invoke-direct {v0}, Lcom/tencent/mm/modelpackage/PackageInfo;-><init>()V

    invoke-direct {p0, p2, v0}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->a:Landroid/content/Context;

    iput p3, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->b:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/tencent/mm/modelpackage/PackageInfo;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/modelpackage/PackageInfo;

    invoke-direct {p1}, Lcom/tencent/mm/modelpackage/PackageInfo;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/modelpackage/PackageInfo;->a(Landroid/database/Cursor;)V

    return-object p1
.end method

.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->b(I)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->a(Landroid/database/Cursor;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->k()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const v7, 0x7f070250

    const/high16 v6, 0x4120

    const/4 v4, -0x2

    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->a:Landroid/content/Context;

    const v1, 0x7f0300e0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->b:I

    iget v2, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->b:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/tencent/mm/ui/setting/ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/setting/ViewHolder;-><init>()V

    const v0, 0x7f070251

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/tencent/mm/ui/setting/ViewHolder;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f070253

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/tencent/mm/ui/setting/ViewHolder;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f070254

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/tencent/mm/ui/setting/ViewHolder;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f070255

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/tencent/mm/ui/setting/ViewHolder;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f070256

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/tencent/mm/ui/setting/ViewHolder;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x3017

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v4}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->V()Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->f:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->f(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelpackage/ChattingBgInfo;

    move-result-object v3

    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->f:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq v0, v4, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->f:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Z

    move-result v1

    if-nez v1, :cond_1

    if-ne v0, v4, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->d()I

    move-result v0

    if-ne v0, v4, :cond_5

    :cond_2
    const-string v0, "using"

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/setting/ViewHolder;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ca

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_2
    return-object p2

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/setting/ViewHolder;

    move-object v2, v0

    goto :goto_0

    :cond_5
    const-string v0, "downloaded"

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/setting/ViewHolder;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->f:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_9

    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->f:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Z

    move-result v1

    if-nez v1, :cond_8

    if-nez v0, :cond_8

    if-eqz v3, :cond_9

    :cond_8
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->d()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    const-string v0, "using"

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/setting/ViewHolder;->a(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_a
    const-string v0, "downloaded"

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/setting/ViewHolder;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    add-int/lit8 v0, p1, -0x2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelpackage/PackageInfo;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->f:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0201f1

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_3

    invoke-static {v1, v6}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/PackageInfo;->f()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->f:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Z

    move-result v1

    if-nez v1, :cond_e

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->d()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/PackageInfo;->b()I

    move-result v0

    if-eq v1, v0, :cond_e

    const-string v0, "downloaded"

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/setting/ViewHolder;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/PackageInfo;->b()I

    move-result v4

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/PackageInfo;->e()I

    move-result v5

    invoke-static {v4, v5}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_4

    :pswitch_1
    const-string v0, "downloading"

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/setting/ViewHolder;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->f:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->d()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/PackageInfo;->b()I

    move-result v0

    if-ne v1, v0, :cond_d

    const-string v0, "using"

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/setting/ViewHolder;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    const-string v0, "downloaded"

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/setting/ViewHolder;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    const-string v0, "undownloaded"

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/setting/ViewHolder;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string v0, "using"

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/setting/ViewHolder;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    const-string v0, "canceling"

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/setting/ViewHolder;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
