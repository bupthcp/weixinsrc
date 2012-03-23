.class Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$1;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$1;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->setResult(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$1;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->finish()V

    return-void
.end method
