.class public Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$OnDownSucc;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/tencent/mm/ui/MMPullDownView;

.field private c:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->f:Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->d:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;)Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;)Lcom/tencent/mm/ui/MMPullDownView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->b:Lcom/tencent/mm/ui/MMPullDownView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300b2

    return v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.ReaderAppUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownSucc :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->b()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    const v0, 0x7f07018e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->d:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    const v1, 0x7f0a049a

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const v1, 0x7f0a049b

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->d:I

    const v0, 0x7f0701e5

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->a:Landroid/widget/ListView;

    const v0, 0x7f0701e4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMPullDownView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->b:Lcom/tencent/mm/ui/MMPullDownView;

    const v0, 0x7f07018e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0499

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {v0, p0, p0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;Landroid/content/Context;Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->a:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->finish()V

    :goto_0
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->d:I

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->e:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->b:Lcom/tencent/mm/ui/MMPullDownView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMPullDownView;->a(Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->b:Lcom/tencent/mm/ui/MMPullDownView;

    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$2;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMPullDownView;->a(Lcom/tencent/mm/ui/MMPullDownView$OnLoadDataListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;

    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$3;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->a(Lcom/tencent/mm/ui/MListAdapter$CallBack;)V

    new-instance v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$4;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$4;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a0013

    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$5;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->d:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a0495

    :goto_1
    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$1;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;)V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0496

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->f:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->r()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->h()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->a(Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$OnDownSucc;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->e(Ljava/lang/String;)Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v0, 0x0

    const v1, 0x7f0a0494

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020183

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v2
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->h()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->b(Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$OnDownSucc;)V

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->d:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->d(I)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->e()V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->e(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->r()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->c:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->b()V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->b()V

    return-void

    :cond_1
    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->d(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->d:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, 0x33c48bea

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->f:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    const v0, 0x7f0a04a9

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/MMToast;->a(Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;J)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->f:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method
