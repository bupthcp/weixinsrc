.class public final Lcom/tencent/mm/modelstat/NetStatStorageLogic;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/tencent/mm/platformtools/TrafficStats;->e()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III)V
    .locals 2

    new-instance v0, Lcom/tencent/mm/modelstat/NetStatInfo;

    invoke-direct {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->l(I)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->x(I)V

    const v1, 0x800800

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(I)V

    invoke-static {v0}, Lcom/tencent/mm/modelstat/NetStatStorageLogic;->a(Lcom/tencent/mm/modelstat/NetStatInfo;)V

    invoke-static {v0, p2}, Lcom/tencent/mm/modelstat/NetStatStorageLogic;->a(Lcom/tencent/mm/modelstat/NetStatInfo;I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->G()Lcom/tencent/mm/modelstat/NetStatStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelstat/NetStatStorage;->a(Lcom/tencent/mm/modelstat/NetStatInfo;)I

    return-void
.end method

.method private static a(Lcom/tencent/mm/modelstat/NetStatInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/platformtools/TrafficStats;->f()V

    invoke-static {}, Lcom/tencent/mm/platformtools/TrafficStats;->d()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->m(I)V

    invoke-static {}, Lcom/tencent/mm/platformtools/TrafficStats;->c()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->y(I)V

    invoke-static {}, Lcom/tencent/mm/platformtools/TrafficStats;->b()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->n(I)V

    invoke-static {}, Lcom/tencent/mm/platformtools/TrafficStats;->a()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->z(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->c()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    or-int/lit16 v0, v0, 0x1000

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(I)V

    return-void
.end method

.method private static a(Lcom/tencent/mm/modelstat/NetStatInfo;I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->z()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->A()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->p(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->c()I

    move-result v0

    const v1, 0x8000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(I)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->n()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->o()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->c()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->z()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->A()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->r(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->c()I

    move-result v0

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->n()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->o()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->f(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->c()I

    move-result v0

    or-int/lit8 v0, v0, 0x20

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(I)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->z()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->A()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->t(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->c()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(I)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->n()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->o()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->h(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->c()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(I)V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->z()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->A()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->v(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->c()I

    move-result v0

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(I)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->n()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->o()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->j(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->c()I

    move-result v0

    or-int/lit16 v0, v0, 0x200

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0x13 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x25 -> :sswitch_1
        0x26 -> :sswitch_1
        0x28 -> :sswitch_7
        0x29 -> :sswitch_6
    .end sparse-switch
.end method

.method public static b(III)V
    .locals 2

    new-instance v0, Lcom/tencent/mm/modelstat/NetStatInfo;

    invoke-direct {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->k(I)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelstat/NetStatInfo;->w(I)V

    const v1, 0x400400

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/NetStatInfo;->a(I)V

    invoke-static {v0}, Lcom/tencent/mm/modelstat/NetStatStorageLogic;->a(Lcom/tencent/mm/modelstat/NetStatInfo;)V

    invoke-static {v0, p2}, Lcom/tencent/mm/modelstat/NetStatStorageLogic;->a(Lcom/tencent/mm/modelstat/NetStatInfo;I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->G()Lcom/tencent/mm/modelstat/NetStatStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelstat/NetStatStorage;->a(Lcom/tencent/mm/modelstat/NetStatInfo;)I

    return-void
.end method
