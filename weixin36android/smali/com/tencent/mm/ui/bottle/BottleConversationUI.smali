.class public Lcom/tencent/mm/ui/bottle/BottleConversationUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->c:Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/BottleConversationUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static b()V
    .locals 5

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(I)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const-string v1, "MicroMsg.Bottle.BottleConversationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetUnread: lastReadTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x3012

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    const-string v1, "floatbottle"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/storage/Conversation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_1
    const-string v0, "MicroMsg.Bottle.BottleConversationUI"

    const-string v1, "resetUnread: can not find bottle"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Conversation;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/storage/ConversationStorage;->a(Lcom/tencent/mm/storage/Conversation;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string v0, "MicroMsg.Bottle.BottleConversationUI"

    const-string v1, "reset bottle unread failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300f5

    return v0
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->c:Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->c:Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->a_(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/bottle/BottleConversationUI$7;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI$7;-><init>(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->d(Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/tencent/mm/ui/AvatarDrawable;->a(Lcom/tencent/mm/ui/MMActivity;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ContactStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->d()I

    move-result v0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v1

    or-int/lit16 v0, v0, 0x1000

    and-int/lit8 v1, v1, -0x41

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const v0, 0x7f070296

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->b:Landroid/widget/ListView;

    const v0, 0x7f07018e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->a:Landroid/widget/TextView;

    const v1, 0x7f0a03d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;

    new-instance v1, Lcom/tencent/mm/ui/bottle/BottleConversationUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI$1;-><init>(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)V

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/MListAdapter$CallBack;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->c:Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->c:Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->b:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/bottle/BottleConversationUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI$2;-><init>(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/bottle/BottleConversationUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI$3;-><init>(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    new-instance v0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$4;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI$4;-><init>(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "conversation_from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$5;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI$5;-><init>(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)V

    const v1, 0x7f0a028a

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    :cond_0
    :goto_0
    new-instance v0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$6;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI$6;-><init>(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->a(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    const v0, 0x7f0a03d7

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->c:Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->a(Lcom/tencent/mm/storage/Contact;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const v1, 0x7f0a03e4

    invoke-interface {p1, v0, v6, v5, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v1, 0x2

    const v2, 0x7f0a03e5

    invoke-interface {p1, v0, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->c:Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {p0}, Lcom/tencent/mm/ui/AvatarDrawable;->b(Lcom/tencent/mm/ui/MMActivity;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ContactStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->c:Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->n()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->c:Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->b()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->c:Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->c:Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->a_(Ljava/lang/String;)V

    return-void
.end method
