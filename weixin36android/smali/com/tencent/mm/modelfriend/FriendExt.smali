.class public Lcom/tencent/mm/modelfriend/FriendExt;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->a:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelfriend/FriendExt;->b:I

    iput v1, p0, Lcom/tencent/mm/modelfriend/FriendExt;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "username"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/FriendExt;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "sex"

    iget v2, p0, Lcom/tencent/mm/modelfriend/FriendExt;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->g:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "personalcard"

    iget v2, p0, Lcom/tencent/mm/modelfriend/FriendExt;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->g:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v2, "province"

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->d:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->g:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const-string v2, "city"

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->e:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->g:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const-string v2, "signature"

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->f:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->d:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->e:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->f:Ljava/lang/String;

    goto :goto_2
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelfriend/FriendExt;->b:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/FriendExt;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->g:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelfriend/FriendExt;->c:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/FriendExt;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FriendExt;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/FriendExt;->e:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/FriendExt;->f:Ljava/lang/String;

    return-void
.end method
