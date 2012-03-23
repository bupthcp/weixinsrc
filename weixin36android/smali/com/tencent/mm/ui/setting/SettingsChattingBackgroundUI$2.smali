.class Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI$2;->a:Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->V()Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;->a()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "MicroMsg.SettingsChattingBackgroundUI"

    const-string v1, "applyToAll : cursor is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/tencent/mm/modelpackage/ChattingBgInfo;

    invoke-direct {v3}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;-><init>()V

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->a(Landroid/database/Cursor;)V

    invoke-virtual {v3}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    invoke-virtual {v3}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;->b()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
