.class Lcom/tencent/mm/network/connpool/QueryDnsValidator$QueryDnsException;
.super Lcom/tencent/mm/network/connpool/DiagnosticException;


# instance fields
.field private a:[Lcom/tencent/mm/network/connpool/InAddress;


# direct methods
.method public constructor <init>([Lcom/tencent/mm/network/connpool/InAddress;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/DiagnosticException;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/network/connpool/QueryDnsValidator$QueryDnsException;->a:[Lcom/tencent/mm/network/connpool/InAddress;

    return-void
.end method


# virtual methods
.method public final a()[Lcom/tencent/mm/network/connpool/InAddress;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/QueryDnsValidator$QueryDnsException;->a:[Lcom/tencent/mm/network/connpool/InAddress;

    return-object v0
.end method
