.class Lcom/helpshift/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/helpshift/n;


# direct methods
.method constructor <init>(Lcom/helpshift/n;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/helpshift/q;->a:Lcom/helpshift/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/q;->a:Lcom/helpshift/n;

    iget-object v0, v0, Lcom/helpshift/n;->a:Lcom/helpshift/m;

    invoke-static {v0}, Lcom/helpshift/m;->c(Lcom/helpshift/m;)Lcom/helpshift/al;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/q;->a:Lcom/helpshift/n;

    iget-object v1, v1, Lcom/helpshift/n;->a:Lcom/helpshift/m;

    invoke-static {v1}, Lcom/helpshift/m;->b(Lcom/helpshift/m;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/al;->c(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/helpshift/q;->a:Lcom/helpshift/n;

    iget-object v0, v0, Lcom/helpshift/n;->a:Lcom/helpshift/m;

    invoke-static {v0}, Lcom/helpshift/m;->b(Lcom/helpshift/m;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "get issues"

    invoke-static {v1, v2, v0}, Lcom/helpshift/ek;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
