.class public final La/b/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/b/a;

.field private final b:[La/f;


# direct methods
.method public constructor <init>(La/b/a;[La/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/h;->a:La/b/a;

    iput-object p2, p0, La/b/h;->b:[La/f;

    return-void
.end method


# virtual methods
.method public final a()La/b/a;
    .locals 1

    iget-object v0, p0, La/b/h;->a:La/b/a;

    return-object v0
.end method

.method public final b()[La/f;
    .locals 1

    iget-object v0, p0, La/b/h;->b:[La/f;

    return-object v0
.end method
