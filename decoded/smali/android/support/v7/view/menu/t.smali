.class Landroid/support/v7/view/menu/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$VisibilityListener;


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/s;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/s;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/view/menu/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/view/menu/s;

    iget-object v0, v0, Landroid/support/v7/view/menu/s;->a:Landroid/support/v7/view/menu/o;

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/view/menu/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/s;)V

    .line 670
    return-void
.end method
