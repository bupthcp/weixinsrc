.class Lcom/tencent/mm/ui/AddressAdapter$ShowObject;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter$ShowObject;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressAdapter$ShowObject;->a:Ljava/lang/String;

    return-object v0
.end method
