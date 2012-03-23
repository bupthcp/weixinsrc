.class Lcom/tencent/mm/ui/chatting/ChattingUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$2;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$2;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$2;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->b(I)V

    const/4 v0, 0x1

    return v0
.end method
