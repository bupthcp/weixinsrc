.class public Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;
.super Lcom/tencent/mm/protocal/MMSync$CmdItem;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lcom/tencent/mm/protocal/MMSync$CmdItem;-><init>(I)V

    const/16 v0, 0x16

    iput v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->b:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->c:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->d:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->e:I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->a:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->b:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->c:I

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->a:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->b:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->d:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->c:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->e:I

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->d:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->e:I

    return v0
.end method
