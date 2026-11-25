.class Lcom/helpshift/cn;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/cm;


# direct methods
.method constructor <init>(Lcom/helpshift/cm;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/helpshift/cn;->a:Lcom/helpshift/cm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/helpshift/cn;->a:Lcom/helpshift/cm;

    iget-object v0, v0, Lcom/helpshift/cm;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->g(Lcom/helpshift/bu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 448
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 449
    iget-object v1, p0, Lcom/helpshift/cn;->a:Lcom/helpshift/cm;

    iget-object v1, v1, Lcom/helpshift/cm;->a:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->g(Lcom/helpshift/bu;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 450
    return-void
.end method
