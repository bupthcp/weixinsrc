.class public final La/g;
.super La/i;


# static fields
.field private static final a:La/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/g;

    invoke-direct {v0}, La/g;-><init>()V

    sput-object v0, La/g;->a:La/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/i;-><init>()V

    return-void
.end method

.method public static a()La/g;
    .locals 1

    sget-object v0, La/g;->a:La/g;

    return-object v0
.end method
