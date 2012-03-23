.class public abstract Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.mm.network.connpool.IConnPoolMoniter_AIDL"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.tencent.mm.network.connpool.IConnPoolMoniter_AIDL"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v0, "com.tencent.mm.network.connpool.IConnPoolMoniter_AIDL"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.tencent.mm.network.connpool.IConnPoolMoniter_AIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v6, v7

    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL$Stub;->a(IILjava/lang/String;ILjava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
