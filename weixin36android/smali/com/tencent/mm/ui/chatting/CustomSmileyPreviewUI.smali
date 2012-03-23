.class public Lcom/tencent/mm/ui/chatting/CustomSmileyPreviewUI;
.super Lcom/tencent/mm/ui/MMActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030048

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/CustomSmileyPreviewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "custom_smiley_preview_md5"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f070116

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/CustomSmileyPreviewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/EmojiView;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/EmojiView;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)V

    new-instance v0, Lcom/tencent/mm/ui/chatting/CustomSmileyPreviewUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/CustomSmileyPreviewUI$1;-><init>(Lcom/tencent/mm/ui/chatting/CustomSmileyPreviewUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/CustomSmileyPreviewUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/EmojiView;->b(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/EmojiView;->b(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/EmojiView;->a(Z)V

    return-void
.end method
