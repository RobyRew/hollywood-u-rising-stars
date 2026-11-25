.class Lcom/helpshift/bh;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/helpshift/bh;->b:Lcom/helpshift/al;

    iput-object p2, p0, Lcom/helpshift/bh;->a:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 642
    iget-object v0, p0, Lcom/helpshift/bh;->b:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->g()Ljava/lang/Integer;

    move-result-object v0

    .line 643
    iget-object v1, p0, Lcom/helpshift/bh;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 644
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 645
    const-string/jumbo v3, "value"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 646
    const-string/jumbo v0, "cache"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 647
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 648
    iget-object v0, p0, Lcom/helpshift/bh;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 649
    return-void
.end method
