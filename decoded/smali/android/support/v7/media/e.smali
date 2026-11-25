.class final Landroid/support/v7/media/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/media/c;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 439
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 447
    :goto_0
    return-void

    .line 441
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/media/e;->a:Landroid/support/v7/media/c;

    invoke-virtual {v0}, Landroid/support/v7/media/c;->c()V

    goto :goto_0

    .line 444
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/media/e;->a:Landroid/support/v7/media/c;

    invoke-virtual {v0}, Landroid/support/v7/media/c;->a()V

    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
