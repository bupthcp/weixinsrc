.class public Lcom/tencent/mm/ui/AddressUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Landroid/view/View$OnClickListener;

.field private F:Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;

.field private a:Landroid/app/AlertDialog;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/tencent/mm/ui/AddressAdapter;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/app/ProgressDialog;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Lcom/tencent/mm/ui/AlphabetScrollBar;

.field private q:Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;

.field private r:Landroid/app/ProgressDialog;

.field private s:Landroid/widget/PopupWindow;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/Button;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->a:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->i:Landroid/app/ProgressDialog;

    iput-boolean v1, p0, Lcom/tencent/mm/ui/AddressUI;->k:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/AddressUI;->l:Z

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->q:Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->A:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/mm/ui/AddressUI;->B:Z

    new-instance v0, Lcom/tencent/mm/ui/AddressUI$13;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/AddressUI$13;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->C:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tencent/mm/ui/AddressUI$14;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/AddressUI$14;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->D:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tencent/mm/ui/AddressUI$15;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/AddressUI$15;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->E:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tencent/mm/ui/AddressUI$16;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/AddressUI$16;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->F:Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/AddressUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/AddressUI;->r:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/AddressUI;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/AddressUI;->s:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/AddressUI;)Lcom/tencent/mm/ui/AddressAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/AddressUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/AddressUI;->A:Ljava/lang/String;

    return-object p1
.end method

.method private a(IZ)V
    .locals 5

    new-instance v0, Lcom/tencent/mm/modelmulti/NetSceneSync;

    invoke-direct {v0, p1}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/tencent/mm/ui/AddressUI$17;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/AddressUI$17;-><init>(Lcom/tencent/mm/ui/AddressUI;Lcom/tencent/mm/modelmulti/NetSceneSync;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_0

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0027

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/AddressUI$18;

    invoke-direct {v4, p0, v0}, Lcom/tencent/mm/ui/AddressUI$18;-><init>(Lcom/tencent/mm/ui/AddressUI;Lcom/tencent/mm/modelmulti/NetSceneSync;)V

    invoke-static {p0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->i:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/AddressUI;I)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "@black.android"

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-gtz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_0
    :goto_0
    const-string v0, "@black.android"

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->p:Lcom/tencent/mm/ui/AlphabetScrollBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->p:Lcom/tencent/mm/ui/AlphabetScrollBar;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/AlphabetScrollBar;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->p:Lcom/tencent/mm/ui/AlphabetScrollBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->p:Lcom/tencent/mm/ui/AlphabetScrollBar;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/AlphabetScrollBar;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/AddressUI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/AddressUI;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/AddressUI;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/AddressUI;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/tencent/mm/ui/SendContactCardUI;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "cardNameToSend is null"

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const-string v0, "be_send_card_name"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ","

    invoke-static {p2, v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "received_card_name"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Is_Chatroom"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x400

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/AddressUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressUI;->finish()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/AddressUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/AddressUI;->k:Z

    return p1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/AddressAdapter;->a_(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/AddressUI;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/AddressAdapter;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/AddressUI;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x5

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->t:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressUI;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/tencent/mm/ui/AvatarDrawable;

    invoke-static {}, Lcom/tencent/mm/ui/AvatarDrawable;->b()I

    move-result v4

    invoke-static {}, Lcom/tencent/mm/ui/AvatarDrawable;->b()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/tencent/mm/ui/AvatarDrawable;-><init>(Landroid/widget/ImageView;II)V

    invoke-virtual {v3, p1}, Lcom/tencent/mm/ui/AvatarDrawable;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v1, v6, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressUI;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressUI;->t:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->u:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->v:Landroid/widget/Button;

    if-nez v0, :cond_4

    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->v:Landroid/widget/Button;

    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->w:Landroid/widget/Button;

    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->x:Landroid/widget/Button;

    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->y:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->v:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressUI;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->w:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressUI;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/AddressAdapter;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressAdapter;->f()Z

    move-result v4

    iget-object v5, p0, Lcom/tencent/mm/ui/AddressUI;->v:Landroid/widget/Button;

    if-eqz v4, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/tencent/mm/ui/AddressUI;->w:Landroid/widget/Button;

    if-eqz v4, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/tencent/mm/ui/AddressUI;->x:Landroid/widget/Button;

    if-eqz v4, :cond_7

    move v0, v2

    :goto_4
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->y:Landroid/widget/Button;

    if-eqz v4, :cond_8

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->v:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0231

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->w:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0232

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    move v2, v1

    goto :goto_5
.end method

.method static synthetic b(Lcom/tencent/mm/ui/AddressUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/AddressUI;->c(Z)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/AddressUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/AddressUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    return-object p1
.end method

.method private c(Z)V
    .locals 23

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->g()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v22

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->p()I

    move-result v6

    const/16 v7, 0x3f

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->q()I

    move-result v8

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->D()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->E()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->F()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->C()I

    move-result v12

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->G()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->H()I

    move-result v14

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->J()I

    move-result v15

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->K()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->L()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->S()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/mm/storage/Contact;->T()I

    move-result v20

    invoke-direct/range {v1 .. v20}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/storage/Contact;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ContactStorage;->f(Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->n()Lcom/tencent/mm/storage/ChatroomMembersStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ChatroomMembersStorage;->d(Ljava/lang/String;)Z

    :goto_0
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->d(Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/storage/Contact;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConversationStorage;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/AddressUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/AddressUI;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/AddressUI;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/ui/AddressUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->n:Ljava/lang/String;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "Chat_User"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressUI;->finish()V

    return-void
.end method

.method static synthetic f(Lcom/tencent/mm/ui/AddressUI;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->s:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/AddressUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/AddressUI;->l:Z

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/AddressUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/AddressUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/AddressUI;->k:Z

    return v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/AddressUI;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressAdapter;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->q:Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->q:Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a035c

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mm/ui/AddressUI$19;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/AddressUI$19;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->i:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic k(Lcom/tencent/mm/ui/AddressUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/AddressUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/AddressUI;)Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->q:Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/AddressUI;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/AddressUI;->B:Z

    return v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030003

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 23

    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v3

    const/16 v4, 0x18

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/AddressUI;->r:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/AddressUI;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/mm/ui/AddressUI;->r:Landroid/app/ProgressDialog;

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;

    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    const/16 v4, 0x11

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/mm/ui/AddressUI;->B:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/tencent/mm/ui/AddressUI;->B:Z

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v3

    or-int/lit8 v17, v3, 0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    const/16 v4, 0x22

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v22

    new-instance v3, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;

    const/16 v4, 0x800

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const-string v18, ""

    const/16 v19, 0x0

    const-string v20, ""

    const/16 v21, 0x0

    invoke-direct/range {v3 .. v21}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->b()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    iget-object v3, v3, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    const-string v4, "qqmail"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/AddressAdapter;->a_(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/AddressUI;->q:Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/mm/ui/AddressUI;->q:Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/tencent/mm/ui/AddressUI;->k:Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/AddressUI;->i:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/AddressUI;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/mm/ui/AddressUI;->i:Landroid/app/ProgressDialog;

    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/tencent/mm/platformtools/Util;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMErrorProcessor$CertainError;->a(Landroid/content/Context;III)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez p1, :cond_7

    if-eqz p2, :cond_f

    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;

    const-string v4, ""

    const-string v3, ""

    const/16 v5, -0x17

    move/from16 v0, p2

    if-ne v0, v5, :cond_8

    const v3, 0x7f0a0385

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v3, 0x7f0a0384

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->g()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/tencent/mm/ui/AddressUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->k()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_b

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    const v3, 0x7f0a009e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "\u3001"

    invoke-static {v5, v7}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/ui/AddressUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    const v4, 0x7f0a035d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/tencent/mm/ui/AddressUI$30;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5}, Lcom/tencent/mm/ui/AddressUI$30;-><init>(Lcom/tencent/mm/ui/AddressUI;Ljava/util/List;)V

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_9
    const/4 v3, 0x0

    goto :goto_1

    :cond_a
    const v3, 0x7f0a009d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "\u3001"

    invoke-static {v5, v7}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/ui/AddressUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_b
    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->j()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_c

    const v4, 0x7f0a035d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a0092

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "\u3001"

    invoke-static {v5, v9}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/tencent/mm/ui/AddressUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_c
    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->i()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_d

    const v4, 0x7f0a035d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a0093

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "\u3001"

    invoke-static {v5, v9}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/tencent/mm/ui/AddressUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_e

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_e
    const v3, 0x7f0a007d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/ui/AddressUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_f
    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;

    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->h()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/mm/ui/AddressUI;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/AddressUI;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/AddressAdapter;->e()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/AddressUI;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/tencent/mm/ui/AddressUI;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/tencent/mm/ui/AddressUI;->b()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x26 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const/high16 v3, 0x400

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/AddressAdapter;->a(Lcom/tencent/mm/storage/Contact;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Lcom/tencent/mm/ui/chatting/ChattingUI;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "Chat_User"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/AddressUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    const-class v0, Lcom/tencent/mm/ui/TConversationUI;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->a(Ljava/lang/Class;)V

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Contact_User"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    const-class v0, Lcom/tencent/mm/ui/QConversationUI;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->a(Ljava/lang/Class;)V

    goto :goto_0

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Contact_User"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_8
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    const-class v0, Lcom/tencent/mm/ui/chatting/ChattingUI;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "Chat_User"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/AddressUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Contact_User"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Lcom/tencent/mm/ui/QQSyncUI;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->a(Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Contact_User"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-class v0, Lcom/tencent/mm/ui/chatting/ChattingUI;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "Chat_User"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/AddressUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_d
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_e
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_f
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "Contact_User"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "Is_group_card"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_11
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0a01aa

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v6

    :pswitch_0
    invoke-direct {p0, v6}, Lcom/tencent/mm/ui/AddressUI;->c(Z)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/AddressUI;->b()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressUI;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    const-string v3, "qqmail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/AddressUI$20;

    invoke-direct {v4, p0, v0}, Lcom/tencent/mm/ui/AddressUI$20;-><init>(Lcom/tencent/mm/ui/AddressUI;Landroid/content/Context;)V

    invoke-static {v0, v2, v1, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    const-string v3, "tmessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/AddressUI$21;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/AddressUI$21;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-static {v0, v2, v1, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    const-string v3, "qmessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/AddressUI$22;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/AddressUI$22;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-static {v0, v2, v1, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    const-string v3, "qqsync"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/AddressUI$23;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/AddressUI$23;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-static {v0, v2, v1, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    const-string v3, "medianote"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/AddressUI$24;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/AddressUI$24;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-static {v0, v2, v1, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    const-string v3, "readerapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/AddressUI$25;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/AddressUI$25;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-static {v0, v2, v1, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    const-string v3, "blogapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/AddressUI$26;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/AddressUI$26;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-static {v0, v2, v1, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    const-string v3, "facebookapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/AddressUI$27;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/AddressUI$27;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-static {v0, v2, v1, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    const-string v3, "masssendapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/AddressUI$28;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/AddressUI$28;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-static {v0, v2, v1, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    const-string v3, "gmailapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/AddressUI$29;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/AddressUI$29;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-static {v0, v2, v1, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    const-string v1, "floatbottle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressUI;->getParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-static {v0, v5, v1}, Lcom/tencent/mm/ui/contact/ContactWidgetFloatBottle;->a(Landroid/content/Context;ZLcom/tencent/mm/ui/MListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    iget-object v0, v0, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    const-string v1, "floatbottle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    const-string v1, "lbsapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressUI;->getParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-static {v0, v5, v1}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a(Landroid/content/Context;ZLcom/tencent/mm/ui/MListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    iget-object v0, v0, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    const-string v1, "lbsapp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    const-string v1, "shakeapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressUI;->getParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-static {v0, v5, v1}, Lcom/tencent/mm/ui/contact/ContactWidgetShake;->a(Landroid/content/Context;ZLcom/tencent/mm/ui/MListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    iget-object v0, v0, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    const-string v1, "shakeapp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {p0}, Lcom/tencent/mm/ui/AvatarDrawable;->a(Lcom/tencent/mm/ui/MMActivity;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_GroupFilter_Type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "@micromsg.qq.com"

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_GroupFilter_Str"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_GroupFilter_DisplayName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Block_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "List_Type"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Add_SendCard"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/AddressUI;->l:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/AddressUI;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "be_send_card_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "received_card_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->n:Ljava/lang/String;

    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-ne v0, v7, :cond_f

    :cond_2
    const v0, 0x7f0a0228

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->g:Ljava/lang/String;

    :cond_3
    :goto_0
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->b:Landroid/widget/ListView;

    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->c:Landroid/widget/TextView;

    const v1, 0x7f0a022e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/tencent/mm/ui/AddressAdapter;

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/AddressUI;->f:Ljava/lang/String;

    iget v5, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/tencent/mm/ui/AddressAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    new-instance v1, Lcom/tencent/mm/ui/AddressUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/AddressUI$1;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/AddressAdapter;->a(Lcom/tencent/mm/ui/MListAdapter$CallBack;)V

    const v0, 0x7f0300ce

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f07022c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f07022d

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v5, 0x7f02026b

    invoke-virtual {v0, v5, v3, v3, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    new-instance v5, Lcom/tencent/mm/ui/AddressUI$2;

    invoke-direct {v5, p0, v1}, Lcom/tencent/mm/ui/AddressUI$2;-><init>(Lcom/tencent/mm/ui/AddressUI;Landroid/widget/Button;)V

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v5, Lcom/tencent/mm/ui/AddressUI$3;

    invoke-direct {v5, p0, v0}, Lcom/tencent/mm/ui/AddressUI$3;-><init>(Lcom/tencent/mm/ui/AddressUI;Landroid/widget/EditText;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/AddressUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/AddressUI$4;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->b:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->registerForContextMenu(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/AddressUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/AddressUI$5;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/AddressUI$6;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/AddressUI$6;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/AvatarWrapperScrollListener;

    new-instance v4, Lcom/tencent/mm/ui/AddressUI$7;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/AddressUI$7;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-direct {v1, v4}, Lcom/tencent/mm/ui/AvatarWrapperScrollListener;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-ne v0, v8, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    const-string v1, "@micromsg.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const v0, 0x7f0a0230

    new-instance v1, Lcom/tencent/mm/ui/AddressUI$8;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/AddressUI$8;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/AddressUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    :cond_6
    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eq v0, v6, :cond_7

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-ne v0, v2, :cond_8

    :cond_7
    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressAdapter;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->b(Z)V

    const v0, 0x7f0a001c

    new-instance v1, Lcom/tencent/mm/ui/AddressUI$9;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/AddressUI$9;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/AddressUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    move-result-object v0

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMImageButton;->setBackgroundResource(I)V

    :cond_8
    :goto_1
    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eq v0, v6, :cond_9

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eq v0, v2, :cond_9

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-ne v0, v7, :cond_14

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/AddressAdapter;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->d(Ljava/lang/String;)V

    :goto_2
    new-instance v0, Lcom/tencent/mm/ui/AddressUI$11;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/AddressUI$11;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->a(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/mm/ui/AddressUI$12;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/AddressUI$12;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    iget v1, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    const/4 v4, 0x4

    if-eq v1, v4, :cond_a

    iget v1, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eq v1, v2, :cond_a

    iget v1, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-ne v1, v6, :cond_15

    :cond_a
    const v1, 0x7f0a0015

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/AddressUI;->b(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    :cond_b
    :goto_3
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/AlphabetScrollBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->p:Lcom/tencent/mm/ui/AlphabetScrollBar;

    const-string v0, "@black.android"

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->p:Lcom/tencent/mm/ui/AlphabetScrollBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/AlphabetScrollBar;->setVisibility(I)V

    :goto_4
    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eq v0, v2, :cond_c

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-ne v0, v6, :cond_19

    :cond_c
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->t:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_5
    const-string v0, "@t.qq.com"

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v1, 0x9

    invoke-static {}, Lcom/tencent/mm/model/ContactStorageLogic;->b()Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v2

    :goto_6
    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/ui/AddressUI;->a(IZ)V

    :cond_e
    :goto_7
    return-void

    :cond_f
    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-ne v0, v2, :cond_10

    const v0, 0x7f0a0229

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-ne v0, v6, :cond_11

    const v0, 0x7f0a0228

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    const v0, 0x7f0a0228

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressAdapter;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->b(Z)V

    const v0, 0x7f0a001c

    new-instance v1, Lcom/tencent/mm/ui/AddressUI$10;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/AddressUI$10;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/AddressUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    move-result-object v0

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_15
    const-string v1, "@black.android"

    iget-object v4, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "@domain.android"

    iget-object v4, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "@t.qq.com"

    iget-object v4, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    goto/16 :goto_3

    :cond_17
    iget v1, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-ne v1, v7, :cond_b

    const v1, 0x7f0a0015

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/AddressUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    goto/16 :goto_3

    :cond_18
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->p:Lcom/tencent/mm/ui/AlphabetScrollBar;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/AlphabetScrollBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->p:Lcom/tencent/mm/ui/AlphabetScrollBar;

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->F:Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/AlphabetScrollBar;->a(Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;)V

    goto/16 :goto_4

    :cond_19
    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-ne v0, v7, :cond_d

    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->u:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    :cond_1a
    move v0, v3

    goto/16 :goto_6

    :cond_1b
    const-string v0, "@qqim"

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xa

    invoke-static {}, Lcom/tencent/mm/model/ContactStorageLogic;->c()Z

    move-result v1

    if-nez v1, :cond_1c

    :goto_8
    invoke-direct {p0, v0, v2}, Lcom/tencent/mm/ui/AddressUI;->a(IZ)V

    goto/16 :goto_7

    :cond_1c
    move v2, v3

    goto :goto_8
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    const-string v1, "@domain.android"

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "@black.android"

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "@t.qq.com"

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v1, 0x2

    const v2, 0x7f0a022d

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    const-string v2, "fmessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v1, 0x3

    const v2, 0x7f0a01a6

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->z:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v1, 0x1

    const v2, 0x7f0a022c

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {p0}, Lcom/tencent/mm/ui/AvatarDrawable;->b(Lcom/tencent/mm/ui/MMActivity;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->p:Lcom/tencent/mm/ui/AlphabetScrollBar;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AlphabetScrollBar;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressAdapter;->n()V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressAdapter;->m()V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->s:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->h:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->h:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-ne v1, v5, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/AddressAdapter;->b(Ljava/util/List;)V

    move-object v1, v0

    :goto_0
    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/AddressAdapter;->a(Ljava/util/List;)V

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eq v0, v6, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-ne v0, v5, :cond_11

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI;->d:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/AddressAdapter;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->d(Ljava/lang/String;)V

    :goto_2
    iget v0, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->f()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/storage/Contact;)I

    :cond_4
    invoke-direct {p0}, Lcom/tencent/mm/ui/AddressUI;->b()V

    return-void

    :cond_5
    iget v1, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    if-eq v1, v6, :cond_12

    iget v1, p0, Lcom/tencent/mm/ui/AddressUI;->o:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_12

    move-object v1, v0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v0

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lcom/tencent/mm/model/ContactStorageLogic;->d:[Ljava/lang/String;

    array-length v3, v0

    :goto_3
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :pswitch_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v3, Lcom/tencent/mm/model/ContactStorageLogic;->d:[Ljava/lang/String;

    array-length v4, v3

    move v0, v2

    :goto_4
    if-ge v0, v4, :cond_2

    aget-object v2, v3, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    const-string v0, "lbsapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "shakeapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "floatbottle"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "qqfriend"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "facebookapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "gmailapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "facebookapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_8

    const-string v2, "qqmail"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lcom/tencent/mm/model/ContactStorageLogic;->e()Z

    move-result v2

    if-eqz v2, :cond_9

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_a

    :cond_9
    const-string v2, "tmessage"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_b

    const-string v2, "qmessage"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_c

    const-string v2, "qqsync"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_d

    const-string v2, "medianote"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const-string v2, "readerapp"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {}, Lcom/tencent/mm/model/ContactStorageLogic;->d()Z

    move-result v2

    const/high16 v3, 0x4

    and-int/2addr v3, v0

    if-nez v3, :cond_f

    if-nez v2, :cond_10

    :cond_f
    const-string v2, "blogapp"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    const/high16 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    const-string v0, "masssendapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUI;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    move-object v1, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
