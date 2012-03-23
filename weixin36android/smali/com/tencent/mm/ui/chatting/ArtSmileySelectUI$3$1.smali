.class Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->b:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;

    iput p2, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->b:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->b(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)I

    move-result v0

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->c:I

    if-ne v0, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->b:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "art_smiley_slelct_data"

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->b:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->a(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->a:I

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->a(I)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->b:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->b:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->a(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->a:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->a(I)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->e(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->b:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->a(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->a()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->b:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->setResult(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->b:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->finish()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->b:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "art_smiley_slelct_data"

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->b:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->a(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->a:I

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->a(I)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->b:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->finish()V

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->b:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->setResult(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;->b:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->finish()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
