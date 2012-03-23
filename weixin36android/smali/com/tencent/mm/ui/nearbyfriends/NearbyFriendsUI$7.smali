.class Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$7;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$7;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->finish()V

    return-void
.end method
