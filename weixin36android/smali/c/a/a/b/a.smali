.class public final Lc/a/a/b/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lc/a/a/b/a/b;

.field private final b:Lc/a/a/a/a/b;

.field private c:I


# direct methods
.method public constructor <init>([BLc/a/a/b/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/a/a/b/a;->c:I

    invoke-static {p1}, Lc/a/a/a/a/b;->a([B)Lc/a/a/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/b/a;->b:Lc/a/a/a/a/b;

    iput-object p2, p0, Lc/a/a/b/a;->a:Lc/a/a/b/a/b;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lc/a/a/b/a;->b:Lc/a/a/a/a/b;

    invoke-virtual {v0}, Lc/a/a/a/a/b;->e()I

    move-result v0

    return v0
.end method

.method public final a(I)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lc/a/a/b/a;->b:Lc/a/a/a/a/b;

    invoke-virtual {v0, p1}, Lc/a/a/a/a/b;->a(I)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/a/a/b/a;->b:Lc/a/a/a/a/b;

    invoke-virtual {v0}, Lc/a/a/a/a/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()F
    .locals 1

    iget-object v0, p0, Lc/a/a/b/a;->b:Lc/a/a/a/a/b;

    invoke-virtual {v0}, Lc/a/a/a/a/b;->c()F

    move-result v0

    return v0
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lc/a/a/b/a;->b:Lc/a/a/a/a/b;

    invoke-virtual {v0}, Lc/a/a/a/a/b;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Lcom/tencent/mm/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lc/a/a/b/a;->b:Lc/a/a/a/a/b;

    invoke-virtual {v0}, Lc/a/a/a/a/b;->g()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lc/a/a/b/a;->b:Lc/a/a/a/a/b;

    invoke-virtual {v0}, Lc/a/a/a/a/b;->a()I

    move-result v0

    iput v0, p0, Lc/a/a/b/a;->c:I

    iget v0, p0, Lc/a/a/b/a;->c:I

    invoke-static {v0}, Lc/a/a/a/a;->b(I)I

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 4

    iget v0, p0, Lc/a/a/b/a;->c:I

    invoke-static {v0}, Lc/a/a/a/a;->a(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "FieldNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lc/a/a/b/a;->c:I

    invoke-static {v3}, Lc/a/a/a/a;->b(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    return-void

    :pswitch_1
    const-string v0, "float value: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lc/a/a/b/a;->b:Lc/a/a/a/a/b;

    invoke-virtual {v2}, Lc/a/a/a/a/b;->c()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const-string v0, "double value: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lc/a/a/b/a;->b:Lc/a/a/a/a/b;

    invoke-virtual {v2}, Lc/a/a/a/a/b;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    const-string v0, "Length delimited (String or ByteString) value: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lc/a/a/b/a;->b:Lc/a/a/a/a/b;

    invoke-virtual {v2}, Lc/a/a/a/a/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_4
    const-string v0, "varint (long, int or boolean) value: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lc/a/a/b/a;->b:Lc/a/a/a/a/b;

    invoke-virtual {v2}, Lc/a/a/a/a/b;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
