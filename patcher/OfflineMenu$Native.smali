.class public Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Native;
.super Ljava/lang/Object;
.source "OfflineMenu.java"

# Runs on the UI thread after a button on the native RR MOD tab. The native
# side (rr_tab.py) has already applied tags 1-9; this shows the result and
# handles the actions that need an Activity.

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Native;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Native;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Native;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Native;->b:I

    const/16 v2, 0xa

    if-ne v1, v2, :not_export

    invoke-static {v0}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->beginExport(Landroid/app/Activity;)V

    return-void

    :not_export
    const/16 v2, 0xb

    if-ne v1, v2, :not_import

    invoke-static {v0}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->beginImport(Landroid/app/Activity;)V

    return-void

    :not_import
    const/16 v2, 0x63

    if-ne v1, v2, :not_panel

    invoke-static {v0}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->show(Landroid/app/Activity;)V

    return-void

    :not_panel
    const-string v2, "Added 10,000,000 cash"

    const/4 p0, 0x1

    if-eq v1, p0, :toast

    const-string v2, "Added 100,000,000 cash"

    const/4 p0, 0x2

    if-eq v1, p0, :toast

    const-string v2, "Added 10,000,000 diamonds"

    const/4 p0, 0x3

    if-eq v1, p0, :toast

    const-string v2, "Added 100,000,000 diamonds"

    const/4 p0, 0x4

    if-eq v1, p0, :toast

    const-string v2, "Up one level"

    const/4 p0, 0x5

    if-eq v1, p0, :toast

    const-string v2, "Added 5,000,000 XP"

    const/4 p0, 0x6

    if-eq v1, p0, :toast

    const-string v2, "Every friend and A-lister is at the top level"

    const/4 p0, 0x7

    if-eq v1, p0, :toast

    const-string v2, "Every building is at its top upgrade level"

    const/16 p0, 0x8

    if-eq v1, p0, :toast

    const-string v2, "Added 100,000,000 cash, 100,000,000 diamonds and 5,000,000 XP. Friends, A-listers and buildings are at their top level."

    const/16 p0, 0x9

    if-eq v1, p0, :toast

    return-void

    :toast
    invoke-static {v0, v2}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
