.class public final La/m;
.super La/i;


# static fields
.field private static final a:La/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/m;

    invoke-direct {v0}, La/m;-><init>()V

    sput-object v0, La/m;->a:La/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/i;-><init>()V

    return-void
.end method

.method public static a()La/m;
    .locals 1

    sget-object v0, La/m;->a:La/m;

    return-object v0
.end method
