.class public final La/a/b/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:[La/a/b/m;


# direct methods
.method varargs constructor <init>(I[La/a/b/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/a/b/g;->a:I

    iput-object p2, p0, La/a/b/g;->b:[La/a/b/m;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, La/a/b/g;->a:I

    return v0
.end method

.method public final b()[La/a/b/m;
    .locals 1

    iget-object v0, p0, La/a/b/g;->b:[La/a/b/m;

    return-object v0
.end method
