.class Lcom/tencent/mm/ui/chatting/ChatFooter$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ChatFooter;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChatFooter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$11;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/modelemoji/EmojiInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->i()I

    move-result v0

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->g:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$11;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->z(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$11;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->z(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)V

    :cond_0
    return-void
.end method
