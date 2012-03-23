.class Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->a(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->b(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->setResult(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p3, v3, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v0, v5}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->a(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->b(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->setResult(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->finish()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    const v1, 0x7f0a0227

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p3, -0x2

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelpackage/PackageInfo;

    if-nez v0, :cond_4

    const-string v0, "MicroMsg.SettingsSelectBgUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick fail, info is null, position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/PackageInfo;->f()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/PackageInfo;->b()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->a(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelpackage/PackageInfo;->f(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->c(Lcom/tencent/mm/modelpackage/PackageInfo;)Z

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->c(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->setResult(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->finish()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->d(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    new-instance v2, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/PackageInfo;->b()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;-><init>(I)V

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->a(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;)Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->d(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->e(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/PackageInfo;->b()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->d(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->d(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->f()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/PackageInfo;->b()I

    move-result v2

    if-ne v1, v2, :cond_6

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->d(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->d(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->f()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->f(II)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->e(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->a(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;Ljava/util/List;)V

    :cond_6
    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/PackageInfo;->b()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->e(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->a(ILjava/util/List;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelpackage/PackageInfo;->f(I)V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->b(Lcom/tencent/mm/modelpackage/PackageInfo;)Z

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/PackageInfo;->b()I

    move-result v0

    new-instance v2, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;Lcom/tencent/mm/modelpackage/PackageInfoStorage;I)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/PackageInfo;->b()I

    move-result v0

    invoke-virtual {v1, v0, v3}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->f(II)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->b(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$BgAdapter;->b()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
