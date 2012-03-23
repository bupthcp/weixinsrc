.class Lcom/tencent/mm/ui/tools/CountryCode;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/CountryCode;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/CountryCode;->b:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/mm/ui/tools/CountryCode;->c:I

    iput-object p4, p0, Lcom/tencent/mm/ui/tools/CountryCode;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCode;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/tools/CountryCode;->c:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCode;->d:Ljava/lang/String;

    return-object v0
.end method
