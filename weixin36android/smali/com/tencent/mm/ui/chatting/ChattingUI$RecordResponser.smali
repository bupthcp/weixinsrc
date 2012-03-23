.class Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelvoice/RemoteController$CallBack;
.implements Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdCancelRequest;
.implements Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStartRequest;
.implements Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStopRequest;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method synthetic constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->l()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->g(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/platformtools/MTimerHandler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->h(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/platformtools/MTimerHandler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->j(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->i(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/chatting/AutoPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->k(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->v()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;I)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "record stop on stop request"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->w()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->f(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->b()V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->i(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/chatting/AutoPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->c()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->e()V

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a()Z

    return-void
.end method

.method public final d()V
    .locals 2

    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "record stop on key up"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->b()Z

    return-void
.end method

.method public final e()Z
    .locals 2

    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "record cancel on cancel request"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->w()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->l(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->e()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->i(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/chatting/AutoPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->c()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;I)V

    const/4 v0, 0x0

    return v0
.end method
