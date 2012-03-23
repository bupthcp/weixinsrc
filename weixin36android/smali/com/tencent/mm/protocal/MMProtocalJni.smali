.class public final Lcom/tencent/mm/protocal/MMProtocalJni;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native bufToResp(ILcom/tencent/mm/protocal/MMBase$Resp;[BLjava/lang/String;Lcom/tencent/mm/pointers/PByteArray;)Z
.end method

.method public static native mergeSyncKey([B[BLcom/tencent/mm/pointers/PByteArray;)Z
.end method

.method public static native pack([BLcom/tencent/mm/pointers/PByteArray;Ljava/lang/String;[BLjava/lang/String;II)Z
.end method

.method public static native reqToBuf(ILcom/tencent/mm/protocal/MMBase$Req;Lcom/tencent/mm/pointers/PByteArray;Ljava/lang/String;[BI)Z
.end method

.method public static native setClientPackVersion(I)Z
.end method

.method public static native unpack(Lcom/tencent/mm/pointers/PByteArray;[BLjava/lang/String;Lcom/tencent/mm/pointers/PByteArray;Lcom/tencent/mm/pointers/PInt;)Z
.end method

.method public static native verifySyncKey([B)Z
.end method
