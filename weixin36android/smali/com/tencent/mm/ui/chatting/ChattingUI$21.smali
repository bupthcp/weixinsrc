.class Lcom/tencent/mm/ui/chatting/ChattingUI$21;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/chatting/ChatFooter$OnChooseListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$21;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$21;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->openContextMenu(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method
