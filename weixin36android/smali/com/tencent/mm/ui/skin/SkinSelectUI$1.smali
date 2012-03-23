.class Lcom/tencent/mm/ui/skin/SkinSelectUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/skin/SkinSelectUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/skin/SkinSelectUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$1;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$1;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$1;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$1;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->a(Lcom/tencent/mm/ui/skin/SkinSelectUI;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$1;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->b(Lcom/tencent/mm/ui/skin/SkinSelectUI;)Lcom/tencent/mm/ui/skin/SkinAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/SkinAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$1;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->b(Lcom/tencent/mm/ui/skin/SkinSelectUI;)Lcom/tencent/mm/ui/skin/SkinAdapter;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/skin/SkinAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modeltheme/ThemeInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->g()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$1;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->finish()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$1;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->b(Lcom/tencent/mm/modeltheme/ThemeInfo;)Z

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$1;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$1;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$1;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->a(Lcom/tencent/mm/ui/skin/SkinSelectUI;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$1;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->b(Lcom/tencent/mm/ui/skin/SkinSelectUI;)Lcom/tencent/mm/ui/skin/SkinAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/SkinAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_5
    new-instance v1, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    invoke-virtual {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->c()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;-><init>(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
