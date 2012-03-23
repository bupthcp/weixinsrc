.class abstract Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;
.super Landroid/view/animation/Animation;


# instance fields
.field a:Landroid/view/View;

.field final synthetic b:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;->b:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;->a:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation$1;-><init>(Lcom/tencent/mm/ui/chatting/ChattingAnimFrame$MMAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
