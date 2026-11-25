.class Lcom/helpshift/dv;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/HSService;


# direct methods
.method constructor <init>(Lcom/helpshift/HSService;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/helpshift/dv;->a:Lcom/helpshift/HSService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/helpshift/dv;->a:Lcom/helpshift/HSService;

    invoke-static {v0}, Lcom/helpshift/HSService;->a(Lcom/helpshift/HSService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/helpshift/dv;->a:Lcom/helpshift/HSService;

    invoke-static {v0}, Lcom/helpshift/HSService;->b(Lcom/helpshift/HSService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/helpshift/HSService;->b()Lcom/helpshift/e/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/helpshift/HSService;->b()Lcom/helpshift/e/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/e/ae;->a()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/helpshift/dv;->a:Lcom/helpshift/HSService;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSService;->a(Lcom/helpshift/HSService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 85
    iget-object v0, p0, Lcom/helpshift/dv;->a:Lcom/helpshift/HSService;

    invoke-static {}, Lcom/helpshift/HSService;->b()Lcom/helpshift/e/ae;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ab;->a(Landroid/content/Context;Lcom/helpshift/e/ae;)Landroid/os/Handler;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/helpshift/dv;->a:Lcom/helpshift/HSService;

    invoke-static {v1}, Lcom/helpshift/HSService;->c(Lcom/helpshift/HSService;)Lcom/helpshift/al;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/al;->f(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/helpshift/dv;->a:Lcom/helpshift/HSService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSService;->a(Lcom/helpshift/HSService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 90
    iget-object v0, p0, Lcom/helpshift/dv;->a:Lcom/helpshift/HSService;

    invoke-virtual {v0}, Lcom/helpshift/HSService;->stopSelf()V

    goto :goto_0
.end method
