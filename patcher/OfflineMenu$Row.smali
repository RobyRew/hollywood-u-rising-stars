.class public Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Row;
.super Ljava/lang/Object;
.source "OfflineMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/app/Dialog;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Row;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Row;->b:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Row;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Row;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Row;->c:Ljava/lang/String;

    const-string v1, "export"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :not_export

    invoke-static {p1}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->beginExport(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Row;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :not_export
    const-string v1, "import"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :not_import

    invoke-static {p1}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->beginImport(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Row;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :not_import
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :not_close

    iget-object p1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Row;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :not_close
    const-string v1, "cash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :not_cash

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->grantKind(I)V

    const-string v0, "Added 10,000,000 cash"

    invoke-static {p1, v0}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :not_cash
    const-string v1, "diamonds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :not_diamonds

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->grantKind(I)V

    const-string v0, "Added 10,000,000 diamonds"

    invoke-static {p1, v0}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :not_diamonds
    const-string v1, "xp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :unlock

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->grantKind(I)V

    const-string v0, "Added 5,000,000 XP"

    invoke-static {p1, v0}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :unlock
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->grantKind(I)V

    const-string v0, "Unlocked cash, diamonds, and XP"

    invoke-static {p1, v0}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
