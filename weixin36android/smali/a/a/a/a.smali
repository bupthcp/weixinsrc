.class public final La/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/a/a/e;

.field private final b:La/a/a/e;

.field private final c:La/a/a/e;


# direct methods
.method public constructor <init>([La/a/a/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, La/a/a/a;->a:La/a/a/e;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, La/a/a/a;->b:La/a/a/e;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, La/a/a/a;->c:La/a/a/e;

    return-void
.end method


# virtual methods
.method public final a()La/a/a/e;
    .locals 1

    iget-object v0, p0, La/a/a/a;->a:La/a/a/e;

    return-object v0
.end method

.method public final b()La/a/a/e;
    .locals 1

    iget-object v0, p0, La/a/a/a;->b:La/a/a/e;

    return-object v0
.end method

.method public final c()La/a/a/e;
    .locals 1

    iget-object v0, p0, La/a/a/a;->c:La/a/a/e;

    return-object v0
.end method
