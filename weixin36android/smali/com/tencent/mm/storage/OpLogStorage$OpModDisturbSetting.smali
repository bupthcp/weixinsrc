.class public Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/storage/OpLogStorage$Operation;


# instance fields
.field private a:Z

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;->a:Z

    const/16 v0, 0x16

    iput v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;->b:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;->c:I

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;->a:Z

    iput p2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;->b:I

    iput p3, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x77

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;->a:Z

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;->b:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x77

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/mm/storage/OpLogStorage$Concat;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
