.class Lcom/tencent/mm/ui/chatting/ChattingUI$16$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/AddContact$IOnAddContact;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ChattingUI$16;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI$16;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$16$1;->a:Lcom/tencent/mm/ui/chatting/ChattingUI$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$16$1;->a:Lcom/tencent/mm/ui/chatting/ChattingUI$16;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI$16;->b:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->s(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Lcom/tencent/mm/storage/Contact;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI$16$1;->a:Lcom/tencent/mm/ui/chatting/ChattingUI$16;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI$16;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method
