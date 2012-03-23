.class public Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->g:I

    iput v1, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->b:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->c:I

    iput v1, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "id"

    iget v2, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v2, "desc"

    iget-object v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->b:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->g:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "reserved1"

    iget v2, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->g:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v0, "reserved2"

    iget v2, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->g:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const-string v2, "reserved3"

    iget-object v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->e:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->g:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const-string v2, "reserved4"

    iget-object v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->f:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->b:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->e:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->f:Ljava/lang/String;

    goto :goto_2
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->a:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->g:I

    return-void
.end method
