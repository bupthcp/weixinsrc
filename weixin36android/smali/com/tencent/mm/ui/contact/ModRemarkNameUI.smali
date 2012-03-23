.class public Lcom/tencent/mm/ui/contact/ModRemarkNameUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Lcom/tencent/mm/storage/Contact;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/ModRemarkNameUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->d:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/ModRemarkNameUI;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiroMsg.ModRemarkName"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set New RemarkName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/model/ContactStorageLogic;->a(Lcom/tencent/mm/storage/Contact;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->c(Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->finish()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/ModRemarkNameUI;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0a0367

    const v3, 0x7f0a0015

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0372

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0373

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomTopic;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomTopic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->c(Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->finish()V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/Contact;->a(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->b(Lcom/tencent/mm/storage/Contact;)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/contact/ModRemarkNameUI;)V
    .locals 5

    const v4, 0x7f0a0367

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiroMsg.ModRemarkName"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->q()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isContact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    const-string v1, "MiroMsg.ModRemarkName"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newName.length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0a0374

    invoke-static {p0, v0, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0a0370

    invoke-static {p0, v0, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    const-wide/16 v2, 0x20

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/Contact;->a(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomTopic;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomTopic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->f(Lcom/tencent/mm/storage/Contact;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->c(Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030099

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "MiroMsg.ModRemarkName"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneEnd: errType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    if-gez p2, :cond_0

    const-string v0, "MiroMsg.ModRemarkName"

    const-string v1, "addRoomCard Error!"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0a036f

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Contact_mode_name_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->d:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Contact_User"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const v0, 0x7f070196

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->a:Landroid/widget/EditText;

    new-instance v3, Lcom/tencent/mm/ui/MMEditText$MixedWordCountTextWatcher;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->a:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/tencent/mm/ui/MMEditText$MixedWordCountTextWatcher;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->d:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->a:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->d:I

    if-nez v0, :cond_7

    const v0, 0x7f0a023f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->d(I)V

    :cond_0
    :goto_3
    const v0, 0x7f0a0017

    new-instance v1, Lcom/tencent/mm/ui/contact/ModRemarkNameUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI$1;-><init>(Lcom/tencent/mm/ui/contact/ModRemarkNameUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a0015

    new-instance v1, Lcom/tencent/mm/ui/contact/ModRemarkNameUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI$2;-><init>(Lcom/tencent/mm/ui/contact/ModRemarkNameUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->t()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_5

    :cond_4
    move v0, v2

    :goto_4
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->a:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->a:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->d:I

    if-ne v0, v1, :cond_8

    const v0, 0x7f0a0369

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->d(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f070197

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a038c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a036c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->d(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method
