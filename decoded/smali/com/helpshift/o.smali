.class Lcom/helpshift/o;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/n;


# direct methods
.method constructor <init>(Lcom/helpshift/n;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/helpshift/o;->a:Lcom/helpshift/n;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/helpshift/o;->a:Lcom/helpshift/n;

    iget-object v0, v0, Lcom/helpshift/n;->a:Lcom/helpshift/m;

    new-instance v1, Lcom/helpshift/p;

    invoke-direct {v1, p0}, Lcom/helpshift/p;-><init>(Lcom/helpshift/o;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/m;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method
