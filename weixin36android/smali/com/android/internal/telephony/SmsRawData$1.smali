.class Lcom/android/internal/telephony/SmsRawData$1;
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsRawData;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    new-instance v1, Lcom/android/internal/telephony/SmsRawData;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsRawData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsRawData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/SmsRawData;
    .locals 1

    new-array v0, p1, [Lcom/android/internal/telephony/SmsRawData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsRawData$1;->newArray(I)[Lcom/android/internal/telephony/SmsRawData;

    move-result-object v0

    return-object v0
.end method
