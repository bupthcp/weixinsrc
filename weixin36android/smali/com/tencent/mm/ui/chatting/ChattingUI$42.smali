.class Lcom/tencent/mm/ui/chatting/ChattingUI$42;
.super Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$42;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$42;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(II)Z

    move-result v0

    return v0
.end method
