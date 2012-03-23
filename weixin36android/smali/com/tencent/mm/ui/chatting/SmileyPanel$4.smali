.class Lcom/tencent/mm/ui/chatting/SmileyPanel$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMFlipper$OnScreenChangedListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/SmileyPanel;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$4;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$4;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->v(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Lcom/tencent/mm/ui/chatting/DotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/chatting/DotView;->b(I)V

    return-void
.end method
