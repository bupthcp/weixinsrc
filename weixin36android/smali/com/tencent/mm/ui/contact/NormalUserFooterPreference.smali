.class public Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;
.super Landroid/preference/Preference;

# interfaces
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/Button;

.field private F:Landroid/view/View;

.field private G:Lcom/tencent/mm/ui/MMActivity;

.field private a:Lcom/tencent/mm/storage/Contact;

.field private b:Z

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->e:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->f:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->g:Z

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->G:Lcom/tencent/mm/ui/MMActivity;

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->e:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->f:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->g:Z

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->G:Lcom/tencent/mm/ui/MMActivity;

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->e:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->f:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->g:Z

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->G:Lcom/tencent/mm/ui/MMActivity;

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->b()V

    return-void
.end method

.method static synthetic A(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->p:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic B(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic C(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->t:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic D(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;Lcom/tencent/mm/storage/Contact;)Lcom/tencent/mm/storage/Contact;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a:Lcom/tencent/mm/storage/Contact;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;)Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->s:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a:Lcom/tencent/mm/storage/Contact;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "MicroMsg.NormalUserFooterPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iniView : bindView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->e()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/storage/Contact;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a:Lcom/tencent/mm/storage/Contact;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->u:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->q:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->r:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->o:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->D:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->v:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->G:Lcom/tencent/mm/ui/MMActivity;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->c:I

    return v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->e:Z

    return v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->b:Z

    return v0
.end method

.method static synthetic o(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d:I

    return v0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->C:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->E:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic s(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->B:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic t(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->A:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic u(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->F:Landroid/view/View;

    return-object v0
.end method

.method static synthetic v(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    return-object v0
.end method

.method static synthetic w(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->w:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic x(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->x:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic y(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->y:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic z(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->z:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;->b()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/storage/Contact;ZZZIIZZ)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a()Z

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a:Lcom/tencent/mm/storage/Contact;

    iput-boolean p2, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->b:Z

    iput p5, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->c:I

    iput p6, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->d:I

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->h:Z

    iput-boolean p7, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->e:Z

    iput-boolean p8, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->f:Z

    iput-boolean p3, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->g:Z

    if-eqz p3, :cond_3

    if-eqz p8, :cond_3

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VertifyCardHandler;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    :goto_3
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->c()V

    move v2, v1

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    new-instance v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VerifyHandler;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$VerifyHandler;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    goto :goto_3

    :cond_4
    if-eqz p4, :cond_5

    new-instance v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$NearByFriendHandler;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$NearByFriendHandler;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ConfigStorageLogic;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/RoleStorage;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    new-instance v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$EmptyHandler;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$EmptyHandler;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$TContactHandler;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$TContactHandler;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$OfficialHandler;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$OfficialHandler;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$RoomHandler;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$RoomHandler;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$QrcodeHandler;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    goto/16 :goto_3

    :cond_b
    new-instance v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$NormalHandler;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$NormalHandler;-><init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->j:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$BaseHandler;

    goto/16 :goto_3
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a:Lcom/tencent/mm/storage/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a:Lcom/tencent/mm/storage/Contact;

    goto :goto_0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0700e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->k:Landroid/widget/TextView;

    const v0, 0x7f0700e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->l:Landroid/widget/TextView;

    const v0, 0x7f0700ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->w:Landroid/widget/LinearLayout;

    const v0, 0x7f0700e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->x:Landroid/widget/LinearLayout;

    const v0, 0x7f0700cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->y:Landroid/widget/LinearLayout;

    const v0, 0x7f0700e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->z:Landroid/widget/LinearLayout;

    const v0, 0x7f0700d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f0700e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f0700d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f0700d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->p:Landroid/widget/LinearLayout;

    const v0, 0x7f0700da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->q:Landroid/widget/LinearLayout;

    const v0, 0x7f0700dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->r:Landroid/widget/LinearLayout;

    const v0, 0x7f0700d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->s:Landroid/widget/LinearLayout;

    const v0, 0x7f0700d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->u:Landroid/widget/LinearLayout;

    const v0, 0x7f0700de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->t:Landroid/widget/LinearLayout;

    const v0, 0x7f0700e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->v:Landroid/widget/LinearLayout;

    const v0, 0x7f0700c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->C:Landroid/widget/LinearLayout;

    const v0, 0x7f0700c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->D:Landroid/widget/Button;

    const v0, 0x7f0700ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->E:Landroid/widget/Button;

    const v0, 0x7f0700cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->A:Landroid/widget/LinearLayout;

    const v0, 0x7f0700cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->B:Landroid/widget/LinearLayout;

    const v0, 0x7f0700c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->F:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->i:Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->c()V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method
