.class public Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->a:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->d:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->f:[B

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->a:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->a:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->f:[B

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->b:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->b:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->e:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->e:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;)[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->f:[B

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->d:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->f:[B

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->b:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->c:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->e:I

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->e:I

    return v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->f:[B

    return-object v0
.end method
