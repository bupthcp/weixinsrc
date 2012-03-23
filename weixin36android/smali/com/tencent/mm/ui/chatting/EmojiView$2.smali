.class Lcom/tencent/mm/ui/chatting/EmojiView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/EmojiView;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/EmojiView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/EmojiView$2;->a:Lcom/tencent/mm/ui/chatting/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/ui/chatting/EmojiView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView$2;->a:Lcom/tencent/mm/ui/chatting/EmojiView;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/EmojiView;->a(Lcom/tencent/mm/ui/chatting/EmojiView;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/EmojiView$2;->a:Lcom/tencent/mm/ui/chatting/EmojiView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/EmojiView;->invalidate()V

    return-void
.end method
