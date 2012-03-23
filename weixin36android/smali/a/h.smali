.class public final La/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private c:[La/f;

.field private final d:La/a;

.field private e:Ljava/util/Map;

.field private final f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[La/f;La/a;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, La/h;-><init>(Ljava/lang/String;[B[La/f;La/a;J)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[B[La/f;La/a;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/h;->a:Ljava/lang/String;

    iput-object p2, p0, La/h;->b:[B

    iput-object p3, p0, La/h;->c:[La/f;

    iput-object p4, p0, La/h;->d:La/a;

    const/4 v0, 0x0

    iput-object v0, p0, La/h;->e:Ljava/util/Map;

    iput-wide p5, p0, La/h;->f:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(La/c;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, La/h;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, La/c;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, La/h;->e:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, La/h;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/h;->a:Ljava/lang/String;

    return-object v0
.end method
