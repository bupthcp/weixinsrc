.class public final La/b/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/k;->a:[B

    iput-object p2, p0, La/b/k;->b:Ljava/lang/String;

    iput-object p3, p0, La/b/k;->c:Ljava/util/List;

    iput-object p4, p0, La/b/k;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, La/b/k;->a:[B

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/b/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, La/b/k;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/b/k;->d:Ljava/lang/String;

    return-object v0
.end method
