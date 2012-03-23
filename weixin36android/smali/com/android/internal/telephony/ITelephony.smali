.class public interface abstract Lcom/android/internal/telephony/ITelephony;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract answerRingingCall()V
.end method

.method public abstract call(Ljava/lang/String;)V
.end method

.method public abstract cancelMissedCallsNotification()V
.end method

.method public abstract dial(Ljava/lang/String;)V
.end method

.method public abstract disableApnType(Ljava/lang/String;)I
.end method

.method public abstract disableDataConnectivity()Z
.end method

.method public abstract disableLocationUpdates()V
.end method

.method public abstract enableApnType(Ljava/lang/String;)I
.end method

.method public abstract enableDataConnectivity()Z
.end method

.method public abstract enableLocationUpdates()V
.end method

.method public abstract endCall()Z
.end method

.method public abstract getActivePhoneType()I
.end method

.method public abstract getCallState()I
.end method

.method public abstract getCdmaEriIconIndex()I
.end method

.method public abstract getCdmaEriIconMode()I
.end method

.method public abstract getCdmaEriText()Ljava/lang/String;
.end method

.method public abstract getCdmaNeedsProvisioning()Z
.end method

.method public abstract getCellLocation()Landroid/os/Bundle;
.end method

.method public abstract getDataActivity()I
.end method

.method public abstract getDataState()I
.end method

.method public abstract getNeighboringCellInfo()Ljava/util/List;
.end method

.method public abstract getNetworkType()I
.end method

.method public abstract getVoiceMessageCount()I
.end method

.method public abstract handlePinMmi(Ljava/lang/String;)Z
.end method

.method public abstract hasIccCard()Z
.end method

.method public abstract isDataConnectivityPossible()Z
.end method

.method public abstract isIdle()Z
.end method

.method public abstract isOffhook()Z
.end method

.method public abstract isRadioOn()Z
.end method

.method public abstract isRinging()Z
.end method

.method public abstract isSimPinEnabled()Z
.end method

.method public abstract setRadio(Z)Z
.end method

.method public abstract showCallScreen()Z
.end method

.method public abstract showCallScreenWithDialpad(Z)Z
.end method

.method public abstract silenceRinger()V
.end method

.method public abstract supplyPin(Ljava/lang/String;)Z
.end method

.method public abstract toggleRadioOnOff()V
.end method

.method public abstract updateServiceLocation()V
.end method
