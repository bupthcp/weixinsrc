// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.android.internal.telephony;

import android.os.Bundle;
import android.os.IInterface;
import java.util.List;

public interface ITelephony
    extends IInterface
{

    public abstract void answerRingingCall();

    public abstract void call(String s);

    public abstract void cancelMissedCallsNotification();

    public abstract void dial(String s);

    public abstract int disableApnType(String s);

    public abstract boolean disableDataConnectivity();

    public abstract void disableLocationUpdates();

    public abstract int enableApnType(String s);

    public abstract boolean enableDataConnectivity();

    public abstract void enableLocationUpdates();

    public abstract boolean endCall();

    public abstract int getActivePhoneType();

    public abstract int getCallState();

    public abstract int getCdmaEriIconIndex();

    public abstract int getCdmaEriIconMode();

    public abstract String getCdmaEriText();

    public abstract boolean getCdmaNeedsProvisioning();

    public abstract Bundle getCellLocation();

    public abstract int getDataActivity();

    public abstract int getDataState();

    public abstract List getNeighboringCellInfo();

    public abstract int getNetworkType();

    public abstract int getVoiceMessageCount();

    public abstract boolean handlePinMmi(String s);

    public abstract boolean hasIccCard();

    public abstract boolean isDataConnectivityPossible();

    public abstract boolean isIdle();

    public abstract boolean isOffhook();

    public abstract boolean isRadioOn();

    public abstract boolean isRinging();

    public abstract boolean isSimPinEnabled();

    public abstract boolean setRadio(boolean flag);

    public abstract boolean showCallScreen();

    public abstract boolean showCallScreenWithDialpad(boolean flag);

    public abstract void silenceRinger();

    public abstract boolean supplyPin(String s);

    public abstract void toggleRadioOnOff();

    public abstract void updateServiceLocation();
}
