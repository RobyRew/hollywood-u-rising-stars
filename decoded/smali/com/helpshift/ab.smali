.class Lcom/helpshift/ab;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/s;


# direct methods
.method constructor <init>(Lcom/helpshift/s;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/helpshift/ab;->a:Lcom/helpshift/s;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 226
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 227
    iget-object v1, p0, Lcom/helpshift/ab;->a:Lcom/helpshift/s;

    invoke-static {v1}, Lcom/helpshift/s;->b(Lcom/helpshift/s;)Lcom/helpshift/dx;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/helpshift/dx;->d(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/helpshift/ab;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->m(Lcom/helpshift/s;)Lcom/helpshift/al;

    move-result-object v0

    new-instance v1, Lcom/helpshift/ac;

    invoke-direct {v1, p0}, Lcom/helpshift/ac;-><init>(Lcom/helpshift/ab;)V

    iget-object v2, p0, Lcom/helpshift/ab;->a:Lcom/helpshift/s;

    invoke-static {v2}, Lcom/helpshift/s;->p(Lcom/helpshift/s;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/al;->d(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 239
    iget-object v0, p0, Lcom/helpshift/ab;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->m(Lcom/helpshift/s;)Lcom/helpshift/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/al;->o()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
