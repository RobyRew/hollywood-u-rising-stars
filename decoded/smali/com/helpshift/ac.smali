.class Lcom/helpshift/ac;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/ab;


# direct methods
.method constructor <init>(Lcom/helpshift/ab;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/helpshift/ac;->a:Lcom/helpshift/ab;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/ac;->a:Lcom/helpshift/ab;

    iget-object v0, v0, Lcom/helpshift/ab;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->m(Lcom/helpshift/s;)Lcom/helpshift/al;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/ac;->a:Lcom/helpshift/ab;

    iget-object v1, v1, Lcom/helpshift/ab;->a:Lcom/helpshift/s;

    iget-object v1, v1, Lcom/helpshift/s;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/helpshift/ac;->a:Lcom/helpshift/ab;

    iget-object v2, v2, Lcom/helpshift/ab;->a:Lcom/helpshift/s;

    invoke-static {v2}, Lcom/helpshift/s;->p(Lcom/helpshift/s;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/ac;->a:Lcom/helpshift/ab;

    iget-object v3, v3, Lcom/helpshift/ab;->a:Lcom/helpshift/s;

    invoke-static {v3}, Lcom/helpshift/s;->q(Lcom/helpshift/s;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/helpshift/ac;->a:Lcom/helpshift/ab;

    iget-object v4, v4, Lcom/helpshift/ab;->a:Lcom/helpshift/s;

    invoke-static {v4}, Lcom/helpshift/s;->r(Lcom/helpshift/s;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lcom/helpshift/b/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Something really foul has happened"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
