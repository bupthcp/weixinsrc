.class public Lcom/tencent/mm/ui/SendContactCardUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/tencent/mm/ui/MemberCardInfoAdapter;

.field private c:Ljava/util/List;

.field private d:Ljava/lang/String;

.field private e:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/SendContactCardUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->B()Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/SendContactCardUI;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelavatar/ImgFlag;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/SendContactCardUI;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->I()I

    move-result v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/modelavatar/ImgFlag;->d()I

    move-result v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<msg username=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" nickname=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" fullpy=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" shortpy=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" imagestatus=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" scene=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "17"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" province=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" city=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" sign=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" percard=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" sex=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/SendContactCardUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/SendContactCardUI;)V
    .locals 6

    invoke-direct {p0}, Lcom/tencent/mm/ui/SendContactCardUI;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/SendContactCardUI;->d:Ljava/lang/String;

    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/SendContactCardUI;)V
    .locals 7

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/SendContactCardUI;->b()Ljava/lang/String;

    move-result-object v3

    move v6, v5

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->c:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2a

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300d5

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/SendContactCardUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "be_send_card_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/SendContactCardUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Is_Chatroom"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->g:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/SendContactCardUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "received_card_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->d:Ljava/lang/String;

    :goto_0
    const v0, 0x7f0a0319

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/SendContactCardUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/SendContactCardUI;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d4

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->e:Landroid/view/View;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/SendContactCardUI;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->e:Landroid/view/View;

    const v1, 0x7f07023b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/SendContactCardUI;->e:Landroid/view/View;

    const v2, 0x7f070239

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/SendContactCardUI;->e:Landroid/view/View;

    const v3, 0x7f07023a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/SendContactCardUI;->e:Landroid/view/View;

    const v5, 0x7f070238

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f0a0039

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/SendContactCardUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    float-to-int v5, v5

    invoke-static {p0, v2, v5}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/tencent/mm/ui/SendContactCardUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/SendContactCardUI$1;-><init>(Lcom/tencent/mm/ui/SendContactCardUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/SendContactCardUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/SendContactCardUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/SendContactCardUI$2;-><init>(Lcom/tencent/mm/ui/SendContactCardUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/SendContactCardUI;->a(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/SendContactCardUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/SendContactCardUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/SendContactCardUI$3;-><init>(Lcom/tencent/mm/ui/SendContactCardUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/SendContactCardUI;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f07023c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/SendContactCardUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/MemberCardInfoAdapter;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->c:Ljava/util/List;

    :goto_1
    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/ui/MemberCardInfoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/SendContactCardUI;->b:Lcom/tencent/mm/ui/MemberCardInfoAdapter;

    iget-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/SendContactCardUI;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/SendContactCardUI;->b:Lcom/tencent/mm/ui/MemberCardInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->b:Lcom/tencent/mm/ui/MemberCardInfoAdapter;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->a_(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/SendContactCardUI;->b:Lcom/tencent/mm/ui/MemberCardInfoAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/SendContactCardUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "received_card_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->c:Ljava/util/List;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/ChatroomMembersLogic;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/SendContactCardUI;->b:Lcom/tencent/mm/ui/MemberCardInfoAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    iget-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI;->b:Lcom/tencent/mm/ui/MemberCardInfoAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MemberCardInfoAdapter;->a_(Ljava/lang/String;)V

    return-void
.end method
