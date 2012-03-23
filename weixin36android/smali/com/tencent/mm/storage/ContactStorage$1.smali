.class Lcom/tencent/mm/storage/ContactStorage$1;
.super Lcom/tencent/mm/storagebase/MStorageEvent;


# instance fields
.field private synthetic a:Lcom/tencent/mm/storage/ContactStorage;


# direct methods
.method constructor <init>(Lcom/tencent/mm/storage/ContactStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/storage/ContactStorage$1;->a:Lcom/tencent/mm/storage/ContactStorage;

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorageEvent;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tencent/mm/storage/ContactStorage$IContactExtension;

    check-cast p2, Lcom/tencent/mm/storage/Contact;

    invoke-interface {p1, p2}, Lcom/tencent/mm/storage/ContactStorage$IContactExtension;->a(Lcom/tencent/mm/storage/Contact;)V

    return-void
.end method
