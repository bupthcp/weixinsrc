.class Lcom/tencent/mm/ui/chatting/ChattingUI$17;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MListAdapter$CallBack;


# instance fields
.field private a:I

.field private synthetic b:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$17;->b:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$17;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$17;->b:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->q(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/MMPullDownView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$17;->b:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMPullDownView;->a(Z)V

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$17;->a:I

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$17;->b:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$17;->b:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c(Z)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$17;->b:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$17;->b:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->u()Z

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$17;->b:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$17;->a:I

    return-void
.end method
