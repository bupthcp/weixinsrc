.class Lcom/tencent/mm/model/MMCore$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/storage/ContactStorage$IContactExtension;


# instance fields
.field private synthetic a:Lcom/tencent/mm/model/MMCore;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/MMCore;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/model/MMCore$2;->a:Lcom/tencent/mm/model/MMCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/storage/Contact;)V
    .locals 7

    const-wide/16 v5, 0x8

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->a(Lcom/tencent/mm/storage/Contact;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Lcom/tencent/mm/storage/Contact;->e(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->c()J

    move-result-wide v0

    or-long/2addr v0, v5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/storage/Contact;->a(J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "readerapp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "blogapp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "facebookapp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->f()V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/tencent/mm/storage/Contact;->i(I)V

    :cond_4
    sget-object v2, Lcom/tencent/mm/model/ContactStorageLogic;->d:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Lcom/tencent/mm/storage/Contact;->e(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->c()J

    move-result-wide v0

    or-long/2addr v0, v5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mm/storage/Contact;->a(J)V

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
