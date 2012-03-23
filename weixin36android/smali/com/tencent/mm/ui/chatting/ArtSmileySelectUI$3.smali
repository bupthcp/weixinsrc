.class Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->b(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)I

    move-result v0

    sget v2, Lcom/tencent/mm/modelemoji/EmojiInfo;->c:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    const v2, 0x7f0a0018

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;->a:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    const v6, 0x7f0a0011

    invoke-virtual {v5, v6}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    new-instance v4, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;

    invoke-direct {v4, p0, p3}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3$1;-><init>(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;I)V

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    return v7

    :cond_0
    move-object v3, v1

    goto :goto_0
.end method
