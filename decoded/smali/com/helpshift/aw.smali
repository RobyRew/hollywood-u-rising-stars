.class Lcom/helpshift/aw;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/helpshift/aw;->c:Lcom/helpshift/al;

    iput-object p2, p0, Lcom/helpshift/aw;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/helpshift/aw;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/helpshift/aw;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1301
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1302
    iget-object v1, p0, Lcom/helpshift/aw;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1305
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/aw;->c:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    iget-object v1, p0, Lcom/helpshift/aw;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/dx;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    :goto_0
    return-void

    .line 1306
    :catch_0
    move-exception v0

    .line 1307
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
