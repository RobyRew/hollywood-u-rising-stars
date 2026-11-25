.class Lcom/helpshift/bc;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;Landroid/os/Handler;Ljava/lang/Boolean;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/helpshift/bc;->d:Lcom/helpshift/al;

    iput-object p2, p0, Lcom/helpshift/bc;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/helpshift/bc;->b:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/helpshift/bc;->c:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 299
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 300
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 301
    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    const-string/jumbo v2, "issues"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 303
    iget-object v2, p0, Lcom/helpshift/bc;->d:Lcom/helpshift/al;

    iget-object v2, v2, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v2, v1}, Lcom/helpshift/dx;->c(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/helpshift/bc;->d:Lcom/helpshift/al;

    iget-object v1, v1, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1, v0}, Lcom/helpshift/dx;->a(Lorg/json/JSONArray;)V

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/helpshift/bc;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 310
    iget-object v2, p0, Lcom/helpshift/bc;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 312
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/helpshift/bc;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 326
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/helpshift/bc;->d:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/bc;->c:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/helpshift/al;->a(Lcom/helpshift/al;Landroid/os/Handler;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSON Exception!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 319
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/bc;->d:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->d()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/helpshift/bc;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
