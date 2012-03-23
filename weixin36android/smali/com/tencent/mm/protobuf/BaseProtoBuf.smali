.class public abstract Lcom/tencent/mm/protobuf/BaseProtoBuf;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/b;


# static fields
.field protected static a:Lc/a/a/b/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lc/a/a/b/a/a;->a()Lc/a/a/b/a/a;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/protobuf/BaseProtoBuf;->a:Lc/a/a/b/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lc/a/a/b/a;)I
    .locals 1

    invoke-virtual {p0}, Lc/a/a/b/a;->f()I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Lc/a/a/c/a;)V
.end method

.method public b()[B
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;->a()I

    move-result v0

    new-array v0, v0, [B

    new-instance v1, Lc/a/a/c/a;

    invoke-direct {v1, v0}, Lc/a/a/c/a;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/protobuf/BaseProtoBuf;->a(Lc/a/a/c/a;)V

    invoke-virtual {v1}, Lc/a/a/c/a;->a()V

    return-object v0
.end method
