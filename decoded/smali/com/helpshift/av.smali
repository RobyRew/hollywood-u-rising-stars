.class Lcom/helpshift/av;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:I

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;Landroid/os/Handler;ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/helpshift/av;->e:Lcom/helpshift/al;

    iput-object p2, p0, Lcom/helpshift/av;->a:Landroid/os/Handler;

    iput p3, p0, Lcom/helpshift/av;->b:I

    iput-object p4, p0, Lcom/helpshift/av;->c:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/helpshift/av;->d:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/helpshift/av;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1269
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1270
    iget-object v1, p0, Lcom/helpshift/av;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1273
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 1274
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1275
    iget-object v1, p0, Lcom/helpshift/av;->e:Lcom/helpshift/al;

    invoke-static {v1, v0}, Lcom/helpshift/al;->a(Lcom/helpshift/al;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1276
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1278
    const-string/jumbo v1, "t"

    iget v2, p0, Lcom/helpshift/av;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1279
    const-string/jumbo v1, "p"

    iget-object v2, p0, Lcom/helpshift/av;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1280
    iget-object v1, p0, Lcom/helpshift/av;->e:Lcom/helpshift/al;

    iget-object v1, v1, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    iget-object v2, p0, Lcom/helpshift/av;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/helpshift/dx;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1287
    :goto_0
    return-void

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/helpshift/av;->e:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    iget-object v1, p0, Lcom/helpshift/av;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/dx;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1284
    :catch_0
    move-exception v0

    .line 1285
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
