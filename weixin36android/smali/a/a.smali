.class public final enum La/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:La/a;

.field private static final synthetic b:[La/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, La/a;

    const-string v1, "QR_CODE"

    invoke-direct {v0, v1}, La/a;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a;->a:La/a;

    const/4 v0, 0x1

    new-array v0, v0, [La/a;

    const/4 v1, 0x0

    sget-object v2, La/a;->a:La/a;

    aput-object v2, v0, v1

    sput-object v0, La/a;->b:[La/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a;
    .locals 1

    const-class v0, La/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a;

    return-object v0
.end method

.method public static values()[La/a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, La/a;->b:[La/a;

    array-length v1, v0

    new-array v2, v1, [La/a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
