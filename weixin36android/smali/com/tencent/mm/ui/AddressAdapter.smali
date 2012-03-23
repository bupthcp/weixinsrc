.class public Lcom/tencent/mm/ui/AddressAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;


# instance fields
.field protected a:Ljava/util/List;

.field protected b:Lcom/tencent/mm/ui/MMActivity;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:[I

.field private m:[I

.field private n:[Ljava/lang/String;

.field private o:Landroid/content/res/ColorStateList;

.field private p:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lcom/tencent/mm/storage/Contact;

    invoke-direct {v0}, Lcom/tencent/mm/storage/Contact;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->k:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    iput-object p2, p0, Lcom/tencent/mm/ui/AddressAdapter;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/ui/AddressAdapter;->g:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->p:Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/tencent/mm/storage/Contact;

    invoke-direct {v0}, Lcom/tencent/mm/storage/Contact;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->k:Ljava/lang/String;

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    iput-object p2, p0, Lcom/tencent/mm/ui/AddressAdapter;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/ui/AddressAdapter;->g:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/mm/ui/AddressAdapter;->j:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->o:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->p:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private b(Lcom/tencent/mm/storage/Contact;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->r()I

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    const-string v0, "#"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->r()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f0a019b

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->r()I

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f0a036d

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->r()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    const v7, 0x7f0a0010

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressAdapter;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;

    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    iget-object v4, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v5, 0x7f0a0097

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v6

    iget-object v0, v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {v4, v5, v2}, Lcom/tencent/mm/ui/MMActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v2, v7}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/tencent/mm/model/ConfigStorageLogic;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f0a035e

    invoke-static {v0, v2, v7}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressAdapter;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f0a0386

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v3, v7}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;

    iget-object v3, v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/tencent/mm/storage/Contact;Landroid/database/Cursor;)Lcom/tencent/mm/storage/Contact;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/storage/Contact;

    invoke-direct {p1}, Lcom/tencent/mm/storage/Contact;-><init>()V

    const-string v0, "MicroMsg.AddressAdapter"

    const-string v1, "new Contact"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/storage/Contact;->a(Landroid/database/Cursor;)V

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/tencent/mm/storage/Contact;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/ui/AddressAdapter;->a(Lcom/tencent/mm/storage/Contact;Landroid/database/Cursor;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressAdapter;->n()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressAdapter;->b()V

    return-void
.end method

.method public final a(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/AddressAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/AddressAdapter;->d(Ljava/lang/String;)Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/AddressAdapter;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    new-instance v2, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final a(Lcom/tencent/mm/storage/Contact;)V
    .locals 3

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/AddressAdapter;->d(Ljava/lang/String;)Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/AddressAdapter;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 4

    const/4 v3, 0x5

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    iget v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->j:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/RoleInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->j:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->j:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->j:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->j:I

    if-ne v0, v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/ContactStorageLogic;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->j:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    const-string v1, "weixin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressAdapter;->a_(Ljava/lang/String;)V

    return-void
.end method

.method public final b(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->l:[I

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->l:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->l:[I

    aget p1, v0, p1

    :cond_0
    return p1
.end method

.method public b()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressAdapter;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressAdapter;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressAdapter;->a(Landroid/database/Cursor;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressAdapter;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/tencent/mm/ui/AddressAdapter;->k:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/mm/model/ContactStorageLogic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->l:[I

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressAdapter;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressAdapter;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/mm/model/ContactStorageLogic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->n:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->m:[I

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->l:[I

    if-eqz v0, :cond_5

    const-string v0, "MicroMsg.AddressAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset : showSection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressAdapter;->n:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " secPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressAdapter;->l:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressAdapter;->getCount()I

    move-result v0

    :goto_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/tencent/mm/ui/AddressAdapter;->m:[I

    :goto_2
    iget-object v2, p0, Lcom/tencent/mm/ui/AddressAdapter;->l:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressAdapter;->l:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressAdapter;->l:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    :goto_3
    iget-object v3, p0, Lcom/tencent/mm/ui/AddressAdapter;->l:[I

    aget v3, v3, v1

    :goto_4
    if-ge v3, v2, :cond_4

    iget-object v4, p0, Lcom/tencent/mm/ui/AddressAdapter;->m:[I

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressAdapter;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressAdapter;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/AddressAdapter;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressAdapter;->a(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->e:Lcom/tencent/mm/ui/MListAdapter$CallBack;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->e:Lcom/tencent/mm/ui/MListAdapter$CallBack;

    invoke-interface {v0}, Lcom/tencent/mm/ui/MListAdapter$CallBack;->a()V

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 5

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    new-instance v3, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/tencent/mm/storage/Contact;

    invoke-direct {v2}, Lcom/tencent/mm/storage/Contact;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    new-instance v4, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;

    invoke-direct {v4, v0}, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->i:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressAdapter;->a_(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/AddressAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/Contact;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    new-instance v3, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressAdapter;->n()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressAdapter;->b()V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 7

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;

    const-string v4, "MicroMsg.AddressAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectedContact.userName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/model/ContactStorageLogic;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/ChatroomMembersLogic;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->i:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/util/List;
    .locals 6

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->i:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;

    iget-object v0, v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;->a:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->i:I

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;

    iget-object v0, v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/tencent/mm/model/ChatroomMembersLogic;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AddressAdapter;->k()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v3, 0x1

    const/16 v7, 0x8

    const/4 v4, 0x0

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/Contact;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    move v2, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/AddressAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/Contact;

    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v5, 0x7f030042

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;

    invoke-direct {v5}, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;-><init>()V

    const v1, 0x7f0700fc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v1, 0x7f0700fe

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    const v1, 0x7f0700ff

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const v1, 0x7f070100

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    const v1, 0x7f070103

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->g:Landroid/widget/CheckBox;

    const v1, 0x7f070101

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->d:Landroid/widget/TextView;

    const v1, 0x7f070102

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    if-nez p1, :cond_4

    iget-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/AddressAdapter;->b(Lcom/tencent/mm/storage/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v2, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->E(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->o:Landroid/content/res/ColorStateList;

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->j:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->j:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->j:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->j:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    :cond_0
    iget-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/AddressAdapter;->d(Ljava/lang/String;)Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;

    move-result-object v1

    if-eqz v1, :cond_7

    move v1, v3

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_5
    iget-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->f:Ljava/lang/String;

    const-string v2, "@domain.android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->K()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v2, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->g:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    iget-object v6, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v3, v1, v6}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v2, v3, v6}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "@t.qq.com"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->h(Lcom/tencent/mm/storage/Contact;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f020143

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    return-object p2

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->r()I

    move-result v0

    move v2, v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;

    move-object v5, v1

    goto/16 :goto_1

    :cond_4
    if-lez p1, :cond_5

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->r()I

    move-result v1

    if-eq v1, v2, :cond_5

    iget-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/AddressAdapter;->b(Lcom/tencent/mm/storage/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    iget-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/ui/AddressAdapter;->p:Landroid/content/res/ColorStateList;

    goto/16 :goto_3

    :cond_7
    move v1, v4

    goto/16 :goto_4

    :cond_8
    iget-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_5

    :cond_9
    iget-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/AvatarDrawable;

    if-nez v1, :cond_a

    new-instance v1, Lcom/tencent/mm/ui/AvatarDrawable;

    iget-object v2, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mm/ui/AvatarDrawable;->b()I

    move-result v3

    invoke-static {}, Lcom/tencent/mm/ui/AvatarDrawable;->b()I

    move-result v6

    invoke-direct {v1, v2, v3, v6}, Lcom/tencent/mm/ui/AvatarDrawable;-><init>(Landroid/widget/ImageView;II)V

    iget-object v2, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/AvatarDrawable;->a(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_b
    iget-object v1, v5, Lcom/tencent/mm/ui/AddressAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "@chatroom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->h:Ljava/util/List;

    return-object v0
.end method

.method public final j()[Ljava/lang/String;
    .locals 2

    const-string v0, "MicroMsg.AddressAdapter"

    const-string v1, "getSections"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter;->n:[Ljava/lang/String;

    return-object v0
.end method
