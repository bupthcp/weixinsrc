.class public abstract Lcom/tencent/mm/network/IReqResp_AIDL$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/tencent/mm/network/IReqResp_AIDL;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.mm.network.IReqResp_AIDL"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/mm/network/IReqResp_AIDL$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/tencent/mm/network/IReqResp_AIDL;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.tencent.mm.network.IReqResp_AIDL"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tencent/mm/network/IReqResp_AIDL;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tencent/mm/network/IReqResp_AIDL;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/mm/network/IReqResp_AIDL$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/mm/network/IReqResp_AIDL$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.tencent.mm.network.IReqResp_AIDL"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.tencent.mm.network.IReqResp_AIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/network/IReqResp_AIDL$Stub;->a()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "com.tencent.mm.network.IReqResp_AIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/network/IReqResp_AIDL$Stub;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_3
    const-string v2, "com.tencent.mm.network.IReqResp_AIDL"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/network/IReqResp_AIDL$Stub;->c()Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    goto :goto_0

    :sswitch_4
    const-string v2, "com.tencent.mm.network.IReqResp_AIDL"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/network/IReqResp_AIDL$Stub;->d()Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    goto :goto_0

    :sswitch_5
    const-string v2, "com.tencent.mm.network.IReqResp_AIDL"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/network/IAccInfo_AIDL$Stub;->a(Landroid/os/IBinder;)Lcom/tencent/mm/network/IAccInfo_AIDL;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/mm/network/IReqResp_AIDL$Stub;->a(Lcom/tencent/mm/network/IAccInfo_AIDL;)Lcom/tencent/mm/network/IReqResp_AIDL;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp_AIDL;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    goto :goto_0

    :sswitch_6
    const-string v2, "com.tencent.mm.network.IReqResp_AIDL"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/network/IAccInfo_AIDL$Stub;->a(Landroid/os/IBinder;)Lcom/tencent/mm/network/IAccInfo_AIDL;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/tencent/mm/network/IReqResp_AIDL$Stub;->a(Lcom/tencent/mm/network/IAccInfo_AIDL;Lcom/tencent/mm/network/IOnAutoAuth_AIDL;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_0

    :cond_3
    const-string v0, "com.tencent.mm.network.IOnAutoAuth_AIDL"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v4, v0, Lcom/tencent/mm/network/IOnAutoAuth_AIDL;

    if-eqz v4, :cond_4

    check-cast v0, Lcom/tencent/mm/network/IOnAutoAuth_AIDL;

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/tencent/mm/network/IOnAutoAuth_AIDL$Stub$Proxy;

    invoke-direct {v0, v3}, Lcom/tencent/mm/network/IOnAutoAuth_AIDL$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    :sswitch_7
    const-string v0, "com.tencent.mm.network.IReqResp_AIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/network/IReqResp_AIDL$Stub;->e()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.tencent.mm.network.IReqResp_AIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/network/IReqResp_AIDL$Stub;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "com.tencent.mm.network.IReqResp_AIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/network/IAccInfo_AIDL$Stub;->a(Landroid/os/IBinder;)Lcom/tencent/mm/network/IAccInfo_AIDL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/network/IReqResp_AIDL$Stub;->b(Lcom/tencent/mm/network/IAccInfo_AIDL;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
