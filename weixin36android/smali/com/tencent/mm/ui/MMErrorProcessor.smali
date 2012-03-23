.class public final Lcom/tencent/mm/ui/MMErrorProcessor;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/mm/ui/MMActivity;IILandroid/content/Intent;)Landroid/app/AlertDialog;
    .locals 5

    const/4 v0, 0x0

    const v4, 0x7f0a0010

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "MicroMsg.MMErrorProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "MicroMsg.MMErrorProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account expired="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->x()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a012c

    new-instance v2, Lcom/tencent/mm/ui/MMErrorProcessor$2;

    invoke-direct {v2, p3, p0}, Lcom/tencent/mm/ui/MMErrorProcessor$2;-><init>(Landroid/content/Intent;Lcom/tencent/mm/ui/MMActivity;)V

    invoke-static {v0, v1, v4, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const-string v0, "MicroMsg.MMErrorProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account expired="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a012b

    new-instance v2, Lcom/tencent/mm/ui/MMErrorProcessor$1;

    invoke-direct {v2, p3, p0}, Lcom/tencent/mm/ui/MMErrorProcessor$1;-><init>(Landroid/content/Intent;Lcom/tencent/mm/ui/MMActivity;)V

    invoke-static {v0, v1, v4, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_0
        -0x48 -> :sswitch_1
        -0x9 -> :sswitch_1
        -0x6 -> :sswitch_1
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_1
    .end sparse-switch
.end method
