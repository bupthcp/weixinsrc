.class public final La/d;
.super La/i;


# static fields
.field private static final a:La/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/d;

    invoke-direct {v0}, La/d;-><init>()V

    sput-object v0, La/d;->a:La/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/i;-><init>()V

    return-void
.end method

.method public static a()La/d;
    .locals 1

    sget-object v0, La/d;->a:La/d;

    return-object v0
.end method
