.class public interface abstract Lcom/android/internal/telephony/ISms;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract copyMessageToIccEf(I[B[B)Z
.end method

.method public abstract disableCellBroadcast(I)Z
.end method

.method public abstract enableCellBroadcast(I)Z
.end method

.method public abstract getAllMessagesFromIccEf()Ljava/util/List;
.end method

.method public abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method public abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end method

.method public abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method public abstract updateMessageOnIccEf(II[B)Z
.end method
