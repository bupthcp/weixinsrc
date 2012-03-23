.class Lcom/tencent/mm/ui/chatting/ChattingUI$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$4;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 15

    const-wide/16 v13, 0x3e8

    const v12, 0x7f0a0153

    const/4 v1, 0x1

    const-wide/32 v10, 0xea60

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$4;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->d(Lcom/tencent/mm/ui/chatting/ChattingUI;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$4;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;J)J

    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$4;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->d(Lcom/tencent/mm/ui/chatting/ChattingUI;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v2

    const-wide/32 v4, 0xc350

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    cmp-long v4, v2, v10

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$4;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->e(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/Toast;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$4;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$4;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$4;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    new-array v7, v1, [Ljava/lang/Object;

    sub-long v8, v10, v2

    div-long/2addr v8, v13

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v6, v12, v7}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/widget/Toast;)Landroid/widget/Toast;

    :goto_0
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$4;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->e(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_1
    cmp-long v2, v2, v10

    if-ltz v2, :cond_3

    const-string v1, "MicroMsg.ChattingUI"

    const-string v2, "record stop on countdown"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$4;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->f(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$4;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->e()V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$4;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f0a000b

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;I)V

    :goto_1
    return v0

    :cond_2
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$4;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->e(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/Toast;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$4;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    new-array v6, v1, [Ljava/lang/Object;

    sub-long v7, v10, v2

    div-long/2addr v7, v13

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v5, v12, v6}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
