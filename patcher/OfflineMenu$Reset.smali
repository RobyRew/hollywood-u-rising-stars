.class public Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Reset;
.super Ljava/lang/Object;
.source "OfflineMenu.java"

# "Reset" button of the RESET confirmation dialog.

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Reset;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Reset;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->resetAll(Landroid/app/Activity;)V

    return-void
.end method
