.class Lcom/helpshift/cj;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/helpshift/cj;->a:Lcom/helpshift/bu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 123
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 124
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/helpshift/cj;->a:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->e(Lcom/helpshift/bu;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/helpshift/cj;->a:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->e(Lcom/helpshift/bu;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helpshift/cj;->a:Lcom/helpshift/bu;

    invoke-static {v2}, Lcom/helpshift/bu;->f(Lcom/helpshift/bu;)Lcom/helpshift/m;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/helpshift/e/u;->a(ILandroid/app/ProgressDialog;Landroid/content/Context;)V

    .line 129
    return-void
.end method
