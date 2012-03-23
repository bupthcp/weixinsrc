.class public Lcom/tencent/mm/protocal/MMSync$CmdGmailSwitch;
.super Lcom/tencent/mm/protocal/MMSync$CmdItem;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/tencent/mm/protocal/MMSync$CmdItem;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdGmailSwitch;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdGmailSwitch;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdGmailSwitch;->a:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdGmailSwitch;->b:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdGmailSwitch;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdGmailSwitch;->b:I

    return v0
.end method
