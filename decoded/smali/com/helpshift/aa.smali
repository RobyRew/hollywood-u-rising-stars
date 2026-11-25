.class Lcom/helpshift/aa;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/s;


# direct methods
.method constructor <init>(Lcom/helpshift/s;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/helpshift/aa;->a:Lcom/helpshift/s;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/aa;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->m(Lcom/helpshift/s;)Lcom/helpshift/al;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/aa;->a:Lcom/helpshift/s;

    invoke-static {v1}, Lcom/helpshift/s;->j(Lcom/helpshift/s;)Lcom/helpshift/g/a;

    move-result-object v1

    iget-object v1, v1, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/aa;->a:Lcom/helpshift/s;

    invoke-static {v2}, Lcom/helpshift/s;->g(Lcom/helpshift/s;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpshift/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/helpshift/aa;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->n(Lcom/helpshift/s;)V

    .line 208
    iget-object v0, p0, Lcom/helpshift/aa;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->l(Lcom/helpshift/s;)V

    .line 209
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "uploadFailHanlder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
