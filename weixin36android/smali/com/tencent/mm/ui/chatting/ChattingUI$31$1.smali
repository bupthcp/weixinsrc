.class Lcom/tencent/mm/ui/chatting/ChattingUI$31$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelemoji/EmojiInfo;

.field private synthetic b:Lcom/tencent/mm/ui/chatting/ChattingUI$31;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI$31;Lcom/tencent/mm/modelemoji/EmojiInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$31$1;->b:Lcom/tencent/mm/ui/chatting/ChattingUI$31;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$31$1;->a:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$31$1;->a:Lcom/tencent/mm/modelemoji/EmojiInfo;

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->f:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->c(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$31$1;->a:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$31$1;->b:Lcom/tencent/mm/ui/chatting/ChattingUI$31;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI$31;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$31$1;->b:Lcom/tencent/mm/ui/chatting/ChattingUI$31;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI$31;->a:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->k()V

    :cond_0
    return-void
.end method
