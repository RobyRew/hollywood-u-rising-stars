.class public Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Open;
.super Ljava/lang/Object;
.source "OfflineMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Open;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Open;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->show(Landroid/app/Activity;)V

    return-void
.end method
