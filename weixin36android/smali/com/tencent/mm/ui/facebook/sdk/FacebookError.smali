.class public Lcom/tencent/mm/ui/facebook/sdk/FacebookError;
.super Ljava/lang/Throwable;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FacebookError;->a:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FacebookError;->b:Ljava/lang/String;

    return-object v0
.end method
