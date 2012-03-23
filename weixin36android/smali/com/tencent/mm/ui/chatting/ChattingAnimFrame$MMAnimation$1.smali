.class Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation$1;->a:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation$1;->a:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation$1;->a:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation$1;->a:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;->b:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation$1;->a:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;->a:Landroid/view/View;

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
