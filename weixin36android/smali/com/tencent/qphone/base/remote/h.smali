.class final Lcom/tencent/qphone/base/remote/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/tencent/qphone/base/remote/FromServiceMsg;

    invoke-direct {v0, p1}, Lcom/tencent/qphone/base/remote/FromServiceMsg;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/tencent/qphone/base/remote/FromServiceMsg;

    return-object v0
.end method
