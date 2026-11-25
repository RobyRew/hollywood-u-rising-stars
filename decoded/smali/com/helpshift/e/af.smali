.class Lcom/helpshift/e/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/helpshift/e/ae;


# direct methods
.method constructor <init>(Lcom/helpshift/e/ae;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/helpshift/e/af;->a:Lcom/helpshift/e/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/helpshift/e/af;->a:Lcom/helpshift/e/ae;

    invoke-static {v0}, Lcom/helpshift/e/ae;->a(Lcom/helpshift/e/ae;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/e/af;->a:Lcom/helpshift/e/ae;

    invoke-static {v1}, Lcom/helpshift/e/ae;->a(Lcom/helpshift/e/ae;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    iget-object v0, p0, Lcom/helpshift/e/af;->a:Lcom/helpshift/e/ae;

    invoke-static {v0}, Lcom/helpshift/e/ae;->a(Lcom/helpshift/e/ae;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/e/af;->a:Lcom/helpshift/e/ae;

    iget-object v1, v1, Lcom/helpshift/e/ae;->a:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/helpshift/e/af;->a:Lcom/helpshift/e/ae;

    invoke-static {v2}, Lcom/helpshift/e/ae;->b(Lcom/helpshift/e/ae;)F

    move-result v2

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    iget-object v0, p0, Lcom/helpshift/e/af;->a:Lcom/helpshift/e/ae;

    invoke-static {v0}, Lcom/helpshift/e/ae;->c(Lcom/helpshift/e/ae;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/helpshift/e/af;->a:Lcom/helpshift/e/ae;

    iget-object v1, p0, Lcom/helpshift/e/af;->a:Lcom/helpshift/e/ae;

    invoke-static {v1}, Lcom/helpshift/e/ae;->b(Lcom/helpshift/e/ae;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helpshift/e/ae;->a(F)V

    .line 65
    :cond_0
    return-void
.end method
