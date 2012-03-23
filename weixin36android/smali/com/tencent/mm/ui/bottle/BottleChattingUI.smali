.class public Lcom/tencent/mm/ui/bottle/BottleChattingUI;
.super Lcom/tencent/mm/ui/chatting/ChattingUI;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Lcom/tencent/mm/storage/Contact;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleChattingUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Chat_User"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleChattingUI;->f:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleChattingUI;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleChattingUI;->g:Lcom/tencent/mm/storage/Contact;

    invoke-super {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v1, Lcom/tencent/mm/ui/bottle/BottleChattingUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/BottleChattingUI$1;-><init>(Lcom/tencent/mm/ui/bottle/BottleChattingUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnVideoRequest;)V

    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleChattingUI;->f:Ljava/lang/String;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    invoke-static {}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->b()V

    invoke-super {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->onPause()V

    return-void
.end method

.method protected final p()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final q()V
    .locals 4

    const v0, 0x7f0a03d7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/ui/bottle/BottleChattingUI;->g:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/bottle/BottleChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleChattingUI;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected final r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final s()V
    .locals 2

    new-instance v0, Lcom/tencent/mm/ui/bottle/BottleChattingUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/BottleChattingUI$2;-><init>(Lcom/tencent/mm/ui/bottle/BottleChattingUI;)V

    const v1, 0x7f0201c5

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/bottle/BottleChattingUI;->c(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method

.method protected final t()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleChattingUI;->finish()V

    return-void
.end method
