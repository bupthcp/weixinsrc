.class Lcom/tencent/mm/ui/QQSyncUI$15;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/QQSyncUI;

.field private b:Lcom/tencent/mm/ui/SecurityImage;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/QQSyncUI;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->b:Lcom/tencent/mm/ui/SecurityImage;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/QQSyncUI$15;)Lcom/tencent/mm/ui/SecurityImage;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->b:Lcom/tencent/mm/ui/SecurityImage;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/QQSyncUI$15;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/QQSyncUI$15;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "MicroMsg.QQSyncUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get qqsync verify image url:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    const v1, 0x7f0a0010

    new-instance v4, Lcom/tencent/mm/ui/QQSyncUI$15$1;

    invoke-direct {v4, p0, p1}, Lcom/tencent/mm/ui/QQSyncUI$15$1;-><init>(Lcom/tencent/mm/ui/QQSyncUI$15;Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/mm/ui/QQSyncUI$15$2;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/QQSyncUI$15$2;-><init>(Lcom/tencent/mm/ui/QQSyncUI$15;)V

    new-instance v6, Lcom/tencent/mm/ui/SecurityImage$HttpModel;

    invoke-direct {v6, p1}, Lcom/tencent/mm/ui/SecurityImage$HttpModel;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/SecurityImage$Builder;->a(Landroid/content/Context;I[BLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;)Lcom/tencent/mm/ui/SecurityImage;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->b:Lcom/tencent/mm/ui/SecurityImage;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const v6, 0x7f0a039b

    const v5, 0x7f0a0399

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MicroMsg.QQSyncUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qqsync result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    const-string v1, "MicroMsg.QQSyncUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qqsync failed, err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->e(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ISyncModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->e(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ISyncModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->clearLoginInformation()V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v0, "MicroMsg.QQSyncUI"

    const-string v1, "qqsync user canceled"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "MicroMsg.QQSyncUI"

    const-string v1, "qqsync login ok"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->m(Lcom/tencent/mm/ui/QQSyncUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->n(Lcom/tencent/mm/ui/QQSyncUI;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    const v1, 0x7f0a00bf

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->b(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ILoginModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/ILoginModel;->getVerifyImageURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI$15;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->b(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ILoginModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/ILoginModel;->getVerifyImageURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/QQSyncUI$15;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v1, "MicroMsg.QQSyncUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qqsync failed, wrong pim pass, err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    const v1, 0x7f0a03b1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->j(Lcom/tencent/mm/ui/QQSyncUI;)V

    goto :goto_0

    :sswitch_5
    const-string v1, "MicroMsg.QQSyncUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qqsync failed, need pim pass, err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->j(Lcom/tencent/mm/ui/QQSyncUI;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "MicroMsg.QQSyncUI"

    const-string v1, "qqsync unknown failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "MicroMsg.QQSyncUI"

    const-string v1, "qqsync freq limited"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    const v2, 0x7f0a039a

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "MicroMsg.QQSyncUI"

    const-string v1, "qqsync network fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    const v2, 0x7f0a007a

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-virtual {v1, v6}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->g(Lcom/tencent/mm/ui/QQSyncUI;)V

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "autologin"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MicroMsg.QQSyncUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qqsync auto login failed, account expired, err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->g(Lcom/tencent/mm/ui/QQSyncUI;)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-virtual {v2, v6}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "MicroMsg.QQSyncUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qqsync login failed, account expired, err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_b
    const-string v1, "MicroMsg.QQSyncUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qqsync client error param, err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/QQSyncUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/model/LoginModel;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/ILoginModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/QQSyncUI;->a(Lcom/tencent/mm/ui/QQSyncUI;Lcom/tencent/qqpim/interfaces/ILoginModel;)Lcom/tencent/qqpim/interfaces/ILoginModel;

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    const v1, 0x7f0a039c

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_0
        -0x64 -> :sswitch_8
        0x0 -> :sswitch_1
        0x65 -> :sswitch_3
        0xc9 -> :sswitch_6
        0xca -> :sswitch_7
        0xcb -> :sswitch_9
        0xcc -> :sswitch_a
        0xcd -> :sswitch_a
        0xce -> :sswitch_a
        0xcf -> :sswitch_b
        0xd1 -> :sswitch_2
        0xfe -> :sswitch_c
        0xff -> :sswitch_c
        0x3eb -> :sswitch_5
        0x3ec -> :sswitch_4
    .end sparse-switch
.end method
