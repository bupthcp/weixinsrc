.class public final Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private synthetic h:Lcom/tencent/mm/ui/contact/ContactWidgetQContact;


# direct methods
.method synthetic constructor <init>(Lcom/tencent/mm/ui/contact/ContactWidgetQContact;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetQContact;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/ui/contact/ContactWidgetQContact;B)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->h:Lcom/tencent/mm/ui/contact/ContactWidgetQContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "MicroMsg.ContactWidgetQContact"

    const-string v1, "QExtInfoContent : parse xml, but xml is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "extinfo"

    invoke-static {p1, v0}, Lcom/tencent/mm/platformtools/Util;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, ".extinfo.sex"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->a:Ljava/lang/String;

    const-string v0, ".extinfo.age"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->b:Ljava/lang/String;

    const-string v0, ".extinfo.bd"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->d:Ljava/lang/String;

    const-string v0, ".extinfo.country"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->e:Ljava/lang/String;

    const-string v0, ".extinfo.province"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->g:Ljava/lang/String;

    const-string v0, ".extinfo.city"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->f:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->a:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->h:Lcom/tencent/mm/ui/contact/ContactWidgetQContact;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->a(Lcom/tencent/mm/ui/contact/ContactWidgetQContact;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0072

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->a:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->c:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->c:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->h:Lcom/tencent/mm/ui/contact/ContactWidgetQContact;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->a(Lcom/tencent/mm/ui/contact/ContactWidgetQContact;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->d:Ljava/lang/String;

    goto :goto_0
.end method
