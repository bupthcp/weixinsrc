.class public Lcom/tencent/qqpim/exception/NetWorkException;
.super Ljava/lang/Exception;


# static fields
.field public static EXCEPTION_NETWORK_DES:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x5f89205d286d81e0L


# instance fields
.field errorMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u9519\u8bef"

    sput-object v0, Lcom/tencent/qqpim/exception/NetWorkException;->EXCEPTION_NETWORK_DES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/qqpim/exception/NetWorkException;->errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/exception/NetWorkException;->errorMsg:Ljava/lang/String;

    return-object v0
.end method
