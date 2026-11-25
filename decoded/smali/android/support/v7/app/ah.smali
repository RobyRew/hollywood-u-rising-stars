.class Landroid/support/v7/app/ah;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/app/ag;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ag;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Landroid/support/v7/app/ah;->a:Landroid/support/v7/app/ag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/v7/app/ah;->a:Landroid/support/v7/app/ag;

    invoke-virtual {v0}, Landroid/support/v7/app/ag;->b()V

    .line 342
    return-void
.end method
