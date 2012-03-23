.class public Lcom/tencent/mm/ui/SecurityImage$Builder;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I[BLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;)Lcom/tencent/mm/ui/SecurityImage;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const v0, 0x7f0300d0

    invoke-static {p0, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/SecurityImage;

    invoke-virtual {v0, p6}, Lcom/tencent/mm/ui/SecurityImage;->a(Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;)V

    invoke-virtual {v0, p2, p3}, Lcom/tencent/mm/ui/SecurityImage;->a([BLjava/lang/String;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0019

    new-instance v3, Lcom/tencent/mm/ui/SecurityImage$Builder$1;

    invoke-direct {v3, v0, p4}, Lcom/tencent/mm/ui/SecurityImage$Builder$1;-><init>(Lcom/tencent/mm/ui/SecurityImage;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/SecurityImage;->a(Lcom/tencent/mm/ui/SecurityImage;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/tencent/mm/ui/SecurityImage;->c(Lcom/tencent/mm/ui/SecurityImage;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {v0}, Lcom/tencent/mm/ui/SecurityImage;->c(Lcom/tencent/mm/ui/SecurityImage;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-object v0
.end method
