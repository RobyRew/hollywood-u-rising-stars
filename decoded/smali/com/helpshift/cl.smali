.class Lcom/helpshift/cl;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/helpshift/cl;->a:Lcom/helpshift/bu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 156
    iget-object v0, p0, Lcom/helpshift/cl;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->e(Lcom/helpshift/bu;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/helpshift/cl;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->e(Lcom/helpshift/bu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/helpshift/cl;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;)V

    .line 160
    return-void
.end method
