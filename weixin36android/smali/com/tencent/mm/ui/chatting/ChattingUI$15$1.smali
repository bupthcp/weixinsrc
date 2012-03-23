.class Lcom/tencent/mm/ui/chatting/ChattingUI$15$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ChattingUI$15;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI$15;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$15$1;->a:Lcom/tencent/mm/ui/chatting/ChattingUI$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$15$1;->a:Lcom/tencent/mm/ui/chatting/ChattingUI$15;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI$15;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->c()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$15$1;->a:Lcom/tencent/mm/ui/chatting/ChattingUI$15;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI$15;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a_(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$15$1;->a:Lcom/tencent/mm/ui/chatting/ChattingUI$15;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI$15;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$15$1;->a:Lcom/tencent/mm/ui/chatting/ChattingUI$15;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI$15;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->j(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/ListView;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$15$1;->a:Lcom/tencent/mm/ui/chatting/ChattingUI$15;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ChattingUI$15;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ChattingUI;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method
