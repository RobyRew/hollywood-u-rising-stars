.class Lcom/helpshift/ch;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/helpshift/ch;->b:Lcom/helpshift/bu;

    iput-object p2, p0, Lcom/helpshift/ch;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 1207
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1209
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/ch;->b:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->j(Lcom/helpshift/bu;)Lcom/helpshift/al;

    move-result-object v0

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    iget-object v1, p0, Lcom/helpshift/ch;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->t(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    :goto_0
    iget-object v0, p0, Lcom/helpshift/ch;->b:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;)V

    .line 1214
    return-void

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "addMessageHandler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
