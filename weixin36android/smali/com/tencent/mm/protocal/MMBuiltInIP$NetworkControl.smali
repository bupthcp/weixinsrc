.class public Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>([I[III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->a:[I

    iput-object p2, p0, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->b:[I

    iput p3, p0, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->c:I

    iput p4, p0, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->d:I

    return-void
.end method


# virtual methods
.method public a()[I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->a:[I

    return-object v0
.end method

.method public b()[I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->b:[I

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->d:I

    return v0
.end method
