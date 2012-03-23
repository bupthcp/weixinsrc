.class Lcom/tencent/mm/ui/chatting/SmileyPanel$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMFlipper$OnMeasureListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/SmileyPanel;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$3;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    const-string v0, "MicroMsg.SmileyPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeasure width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isMeasured:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$3;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->s(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$3;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->s(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$3;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->t(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$3;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0, p2}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->g(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$3;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->h(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$3;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->u(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V

    goto :goto_0
.end method
