.class public Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/app/AlertDialog;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->b:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->b:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->b:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->c:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f03009c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a03b2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->d(I)V

    const v0, 0x7f03005a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->d:Landroid/view/View;

    const v1, 0x7f070137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->c:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, 0x7f0701a0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->a:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$2;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method
