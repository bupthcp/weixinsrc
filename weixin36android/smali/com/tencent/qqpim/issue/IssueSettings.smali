.class public final Lcom/tencent/qqpim/issue/IssueSettings;
.super Ljava/lang/Object;


# static fields
.field public static QQPimPWDPageCannotRefresh:Z

.field public static aboutContentDisplayError:Z

.field public static anonymousDraftAfterBackupDisplayErrorName:Z

.field public static anonymousDraftCanNotBeRestored:Z

.field public static backgroundRunningCannotDisplayAlertDialog:Z

.field public static birthdayDisplayError:Z

.field public static contactGoogleTypeAndPhoneTypeError:Z

.field public static draftHasMoreCantactsUploadDisplayWrong:Z

.field public static fetionCannotBeRestored:Z

.field public static loginPageCannotRefresh:Z

.field public static loginPageDrapdownListDisplayWrong:Z

.field public static moreListItemDisplayUncomplete:Z

.field public static photoDownloadTophoneAfterEditerNativePhotoError_1_5SDK:Z

.field public static photoDownloadTophoneFatalError:Z

.field public static simContactsCanNotUploadToNet:Z

.field public static simContactsCanNotUploadToNetForZTE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    sput-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->loginPageDrapdownListDisplayWrong:Z

    sput-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->draftHasMoreCantactsUploadDisplayWrong:Z

    sput-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->fetionCannotBeRestored:Z

    sput-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->moreListItemDisplayUncomplete:Z

    sput-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNet:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->anonymousDraftCanNotBeRestored:Z

    sput-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->aboutContentDisplayError:Z

    sput-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->backgroundRunningCannotDisplayAlertDialog:Z

    sput-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->loginPageCannotRefresh:Z

    sput-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->contactGoogleTypeAndPhoneTypeError:Z

    sput-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->birthdayDisplayError:Z

    sput-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->photoDownloadTophoneFatalError:Z

    sput-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->anonymousDraftAfterBackupDisplayErrorName:Z

    sput-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNetForZTE:Z

    sput-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->QQPimPWDPageCannotRefresh:Z

    sput-boolean v0, Lcom/tencent/qqpim/issue/IssueSettings;->photoDownloadTophoneAfterEditerNativePhotoError_1_5SDK:Z

    const-string v0, "OMS1_5"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->loginPageDrapdownListDisplayWrong:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->fetionCannotBeRestored:Z

    :cond_0
    const-string v0, "LG-P500"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->moreListItemDisplayUncomplete:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->anonymousDraftCanNotBeRestored:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->backgroundRunningCannotDisplayAlertDialog:Z

    :cond_1
    const-string v0, "GT-T959"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->draftHasMoreCantactsUploadDisplayWrong:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNet:Z

    :cond_2
    const-string v0, "XT800"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "XT800W"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNet:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->draftHasMoreCantactsUploadDisplayWrong:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->loginPageCannotRefresh:Z

    :cond_4
    const-string v0, "HTC Wildfire"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->anonymousDraftCanNotBeRestored:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->aboutContentDisplayError:Z

    :cond_5
    const-string v0, "D530"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNet:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->draftHasMoreCantactsUploadDisplayWrong:Z

    :cond_6
    const-string v0, "HTC Tattoo"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->contactGoogleTypeAndPhoneTypeError:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->aboutContentDisplayError:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->anonymousDraftCanNotBeRestored:Z

    :cond_7
    const-string v0, "MB200"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ME200"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->draftHasMoreCantactsUploadDisplayWrong:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->birthdayDisplayError:Z

    :cond_9
    const-string v0, "MB525"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ME525"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->loginPageCannotRefresh:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->draftHasMoreCantactsUploadDisplayWrong:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->birthdayDisplayError:Z

    :cond_b
    const-string v0, "GT-I9000"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->loginPageCannotRefresh:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNet:Z

    :cond_c
    const-string v0, "MotoA953"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->birthdayDisplayError:Z

    :cond_d
    const-string v0, "meizu_m9"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->backgroundRunningCannotDisplayAlertDialog:Z

    :cond_e
    const-string v0, "HTC Desire"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->anonymousDraftCanNotBeRestored:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->backgroundRunningCannotDisplayAlertDialog:Z

    :cond_f
    const-string v0, "ME501"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->birthdayDisplayError:Z

    :cond_10
    const-string v0, "C8500"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->aboutContentDisplayError:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNet:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->anonymousDraftCanNotBeRestored:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->anonymousDraftAfterBackupDisplayErrorName:Z

    :cond_11
    const-string v0, "SCH-i909"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->loginPageCannotRefresh:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNet:Z

    :cond_12
    const-string v0, "E10i"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->aboutContentDisplayError:Z

    :cond_13
    const-string v0, "GT-I5508"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->aboutContentDisplayError:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNet:Z

    :cond_14
    const-string v0, "GT-I5801"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNet:Z

    :cond_15
    const-string v0, "W180"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->loginPageCannotRefresh:Z

    :cond_16
    const-string v0, "XT701"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->loginPageCannotRefresh:Z

    :cond_17
    const-string v0, "ZTE-C N600"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->aboutContentDisplayError:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNetForZTE:Z

    :cond_18
    const-string v0, "U8500 HiQQ"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->loginPageCannotRefresh:Z

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->QQPimPWDPageCannotRefresh:Z

    :cond_19
    const-string v0, "ME600"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->simContactsCanNotUploadToNet:Z

    :cond_1a
    const-string v0, "Galaxy"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sput-boolean v2, Lcom/tencent/qqpim/issue/IssueSettings;->photoDownloadTophoneAfterEditerNativePhotoError_1_5SDK:Z

    :cond_1b
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isContainedAccountName(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->values()[Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
