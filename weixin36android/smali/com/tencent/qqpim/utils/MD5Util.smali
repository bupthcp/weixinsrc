.class public Lcom/tencent/qqpim/utils/MD5Util;
.super Ljava/lang/Object;


# static fields
.field private static final HEXDIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/utils/MD5Util;->HEXDIGITS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/utils/MD5Util;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt([B)[B
    .locals 1

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encrypt_bytes([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/tencent/qqpim/utils/MD5Util;->encrypt([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/utils/MD5Util;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt_string(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/tencent/qqpim/utils/MD5Util;->encrypt(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/utils/MD5Util;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    sget-object v4, Lcom/tencent/qqpim/utils/MD5Util;->HEXDIGITS:[C

    shr-int/lit8 v5, v3, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/qqpim/utils/MD5Util;->HEXDIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
