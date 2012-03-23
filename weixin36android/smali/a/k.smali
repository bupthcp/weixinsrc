.class public final La/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/e;

.field private b:La/b/a;


# direct methods
.method public constructor <init>(La/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Binarizer must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, La/k;->a:La/e;

    return-void
.end method


# virtual methods
.method public final a()La/b/a;
    .locals 1

    iget-object v0, p0, La/k;->b:La/b/a;

    if-nez v0, :cond_0

    iget-object v0, p0, La/k;->a:La/e;

    invoke-virtual {v0}, La/e;->a()La/b/a;

    move-result-object v0

    iput-object v0, p0, La/k;->b:La/b/a;

    :cond_0
    iget-object v0, p0, La/k;->b:La/b/a;

    return-object v0
.end method
