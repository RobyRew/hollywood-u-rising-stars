.class Landroid/support/v7/app/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/gy;


# instance fields
.field final synthetic a:Landroid/support/v7/app/bf;


# direct methods
.method constructor <init>(Landroid/support/v7/app/bf;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Landroid/support/v7/app/bh;->a:Landroid/support/v7/app/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/app/bh;->a:Landroid/support/v7/app/bf;

    iget-object v0, v0, Landroid/support/v7/app/bf;->c:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
