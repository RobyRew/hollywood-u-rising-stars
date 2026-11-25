.class Lcom/helpshift/ap;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/helpshift/ap;->b:Lcom/helpshift/al;

    iput-object p2, p0, Lcom/helpshift/ap;->a:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/helpshift/ap;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1023
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1024
    iget-object v1, p0, Lcom/helpshift/ap;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1025
    iget-object v0, p0, Lcom/helpshift/ap;->b:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->s()V

    .line 1026
    return-void
.end method
