.class Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$2;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$2;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->a(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->a(I)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$2;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "art_smiley_slelct_data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$2;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->finish()V

    return-void
.end method
