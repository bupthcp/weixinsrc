.class Lcom/tencent/qqpim/service/QQServiceUtil$myAMActionLister;
.super Lcom/tencent/qphone/a/a/a/d;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpim/service/QQServiceUtil;


# direct methods
.method private constructor <init>(Lcom/tencent/qqpim/service/QQServiceUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/service/QQServiceUtil$myAMActionLister;->this$0:Lcom/tencent/qqpim/service/QQServiceUtil;

    invoke-direct {p0}, Lcom/tencent/qphone/a/a/a/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqpim/service/QQServiceUtil;Lcom/tencent/qqpim/service/QQServiceUtil$myAMActionLister;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/service/QQServiceUtil$myAMActionLister;-><init>(Lcom/tencent/qqpim/service/QQServiceUtil;)V

    return-void
.end method

.method private startInitUI(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "ret"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ret"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/service/QQServiceUtil$myAMActionLister;->this$0:Lcom/tencent/qqpim/service/QQServiceUtil;

    iget-object v0, v0, Lcom/tencent/qqpim/service/QQServiceUtil;->callbackhandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/tencent/qqpim/service/QQServiceUtil$myAMActionLister;->this$0:Lcom/tencent/qqpim/service/QQServiceUtil;

    iget-object v1, v1, Lcom/tencent/qqpim/service/QQServiceUtil;->callbackhandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/tencent/qqpim/service/QQServiceUtil$myAMActionLister;->this$0:Lcom/tencent/qqpim/service/QQServiceUtil;

    iget-object v0, v0, Lcom/tencent/qqpim/service/QQServiceUtil;->amEngine:Lcom/tencent/qphone/a/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/qphone/a/a/a/e;->a()V

    goto :goto_0
.end method


# virtual methods
.method public onGetDefaultPassportResult(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/service/QQServiceUtil$myAMActionLister;->startInitUI(Landroid/os/Bundle;)V

    return-void
.end method

.method public onGetMainAccountResult(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/service/QQServiceUtil$myAMActionLister;->startInitUI(Landroid/os/Bundle;)V

    return-void
.end method
