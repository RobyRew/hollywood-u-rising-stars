.class public Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Click;
.super Ljava/lang/Object;
.source "OfflineMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Click;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Click;->a:Landroid/app/Activity;

    if-nez p2, :import

    invoke-static {p1}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->beginExport(Landroid/app/Activity;)V

    return-void

    :import
    const/4 v0, 0x1

    if-ne p2, v0, :rings

    invoke-static {p1}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->beginImport(Landroid/app/Activity;)V

    return-void

    :rings
    const/4 v0, 0x2

    if-ne p2, v0, :coins

    const-string p1, "hwu_rings_1000"

    invoke-static {p1}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->grant(Ljava/lang/String;)V

    return-void

    :coins
    const/4 v0, 0x3

    if-ne p2, v0, :books

    const-string p1, "hwu_coins_10000"

    invoke-static {p1}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->grant(Ljava/lang/String;)V

    return-void

    :books
    const/4 v0, 0x4

    if-ne p2, v0, :pencils

    const-string p1, "hwu_stars_500"

    invoke-static {p1}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->grant(Ljava/lang/String;)V

    return-void

    :pencils
    const/4 v0, 0x5

    if-ne p2, v0, :tickets

    const-string p1, "hwu_pencils_100"

    invoke-static {p1}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->grant(Ljava/lang/String;)V

    return-void

    :tickets
    const/4 v0, 0x6

    if-ne p2, v0, :xp

    const-string p1, "hwu_tickets_25"

    invoke-static {p1}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->grant(Ljava/lang/String;)V

    return-void

    :xp
    const-string p1, "hwu_xp_2000"

    invoke-static {p1}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->grant(Ljava/lang/String;)V

    return-void
.end method
