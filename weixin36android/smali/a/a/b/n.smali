.class abstract La/a/b/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:[La/a/b/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [La/a/b/n;

    const/4 v1, 0x0

    new-instance v2, La/a/b/c;

    invoke-direct {v2}, La/a/b/c;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, La/a/b/d;

    invoke-direct {v2}, La/a/b/d;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, La/a/b/f;

    invoke-direct {v2}, La/a/b/f;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, La/a/b/e;

    invoke-direct {v2}, La/a/b/e;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, La/a/b/l;

    invoke-direct {v2}, La/a/b/l;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, La/a/b/k;

    invoke-direct {v2}, La/a/b/k;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, La/a/b/i;

    invoke-direct {v2}, La/a/b/i;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, La/a/b/j;

    invoke-direct {v2}, La/a/b/j;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, La/a/b/n;->a:[La/a/b/n;

    return-void
.end method

.method synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/a/b/n;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)La/a/b/n;
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, La/a/b/n;->a:[La/a/b/n;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method final a(La/b/a;I)V
    .locals 4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, p2, :cond_0

    return-void

    :cond_0
    move v0, v1

    :goto_1
    if-lt v0, p2, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v0}, La/a/b/n;->a(II)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v0, v2}, La/b/a;->c(II)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method abstract a(II)Z
.end method
