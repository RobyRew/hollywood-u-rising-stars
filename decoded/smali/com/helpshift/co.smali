.class Lcom/helpshift/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/helpshift/cm;


# direct methods
.method constructor <init>(Lcom/helpshift/cm;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/helpshift/co;->a:Lcom/helpshift/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/co;->a:Lcom/helpshift/cm;

    iget-object v0, v0, Lcom/helpshift/cm;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->j(Lcom/helpshift/bu;)Lcom/helpshift/al;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/co;->a:Lcom/helpshift/cm;

    iget-object v1, v1, Lcom/helpshift/cm;->a:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->e(Lcom/helpshift/bu;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/co;->a:Lcom/helpshift/cm;

    iget-object v2, v2, Lcom/helpshift/cm;->a:Lcom/helpshift/bu;

    invoke-static {v2}, Lcom/helpshift/bu;->h(Lcom/helpshift/bu;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/co;->a:Lcom/helpshift/cm;

    iget-object v3, v3, Lcom/helpshift/cm;->a:Lcom/helpshift/bu;

    invoke-static {v3}, Lcom/helpshift/bu;->i(Lcom/helpshift/bu;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    iget-object v0, p0, Lcom/helpshift/co;->a:Lcom/helpshift/cm;

    iget-object v0, v0, Lcom/helpshift/cm;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->e(Lcom/helpshift/bu;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 465
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "get issues"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
