.class public final Lc/a/a/c/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:Ljava/io/OutputStream;

.field private final c:Lc/a/a/a/b/a;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/a/c/a;->a:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/c/a;->b:Ljava/io/OutputStream;

    invoke-static {p1}, Lc/a/a/a/b/a;->a([B)Lc/a/a/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/c/a;->c:Lc/a/a/a/b/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lc/a/a/c/a;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/c/a;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lc/a/a/c/a;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lc/a/a/c/a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public final a(ID)V
    .locals 1

    iget-object v0, p0, Lc/a/a/c/a;->c:Lc/a/a/a/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lc/a/a/a/b/a;->a(ID)V

    return-void
.end method

.method public final a(IF)V
    .locals 1

    iget-object v0, p0, Lc/a/a/c/a;->c:Lc/a/a/a/b/a;

    invoke-virtual {v0, p1, p2}, Lc/a/a/a/b/a;->a(IF)V

    return-void
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lc/a/a/c/a;->c:Lc/a/a/a/b/a;

    invoke-virtual {v0, p1, p2}, Lc/a/a/a/b/a;->a(II)V

    return-void
.end method

.method public final a(IILjava/util/LinkedList;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The data type was not found, the id used was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v1, v0

    :goto_0
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protobuf/ByteString;

    invoke-virtual {p0, p1, v0}, Lc/a/a/c/a;->a(ILcom/tencent/mm/protobuf/ByteString;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_1
    move v1, v0

    :goto_1
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lc/a/a/c/a;->a(ID)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_2
    move v1, v0

    :goto_2
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc/a/a/c/a;->a(IF)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_3
    move v1, v0

    :goto_3
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc/a/a/c/a;->a(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :pswitch_4
    move v1, v0

    :goto_4
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lc/a/a/c/a;->a(IJ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :pswitch_5
    move v1, v0

    :goto_5
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :pswitch_6
    move v1, v0

    :goto_6
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lc/a/a/c/a;->c:Lc/a/a/a/b/a;

    invoke-virtual {v2, p1, v0}, Lc/a/a/a/b/a;->a(IZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :pswitch_7
    move v1, v0

    :goto_7
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/b;

    invoke-interface {v0}, Lc/a/a/b;->a()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lc/a/a/c/a;->b(II)V

    invoke-interface {v0, p0}, Lc/a/a/b;->a(Lc/a/a/c/a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final a(IJ)V
    .locals 1

    iget-object v0, p0, Lc/a/a/c/a;->c:Lc/a/a/a/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lc/a/a/a/b/a;->a(IJ)V

    return-void
.end method

.method public final a(ILcom/tencent/mm/protobuf/ByteString;)V
    .locals 1

    iget-object v0, p0, Lc/a/a/c/a;->c:Lc/a/a/a/b/a;

    invoke-virtual {v0, p1, p2}, Lc/a/a/a/b/a;->a(ILcom/tencent/mm/protobuf/ByteString;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/a/a/c/a;->c:Lc/a/a/a/b/a;

    invoke-virtual {v0, p1, p2}, Lc/a/a/a/b/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final b(II)V
    .locals 1

    iget-object v0, p0, Lc/a/a/c/a;->c:Lc/a/a/a/b/a;

    invoke-virtual {v0, p1, p2}, Lc/a/a/a/b/a;->b(II)V

    return-void
.end method
