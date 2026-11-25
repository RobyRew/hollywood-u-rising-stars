.class Lcom/helpshift/bb;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/helpshift/bb;->b:Lcom/helpshift/al;

    iput-object p2, p0, Lcom/helpshift/bb;->a:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 168
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 171
    if-eqz v0, :cond_2

    .line 172
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 173
    iget-object v1, p0, Lcom/helpshift/bb;->b:Lcom/helpshift/al;

    iget-object v1, v1, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->x()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "bcl"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 174
    iget-object v1, p0, Lcom/helpshift/bb;->b:Lcom/helpshift/al;

    iget-object v1, v1, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    const-string/jumbo v2, "bcl"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/dx;->a(Ljava/lang/Integer;)V

    .line 177
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/bb;->b:Lcom/helpshift/al;

    iget-object v1, v1, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->y()Lorg/json/JSONObject;

    move-result-object v1

    .line 178
    const-string/jumbo v2, "pr"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 179
    const-string/jumbo v2, "pr"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 180
    if-eqz v1, :cond_1

    const-string/jumbo v3, "t"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/helpshift/bb;->b:Lcom/helpshift/al;

    invoke-virtual {v1}, Lcom/helpshift/al;->i()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/helpshift/bb;->b:Lcom/helpshift/al;

    iget-object v1, v1, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v1, v0}, Lcom/helpshift/dx;->b(Lorg/json/JSONObject;)V

    .line 188
    iget-object v1, p0, Lcom/helpshift/bb;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 189
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/helpshift/bb;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    :cond_2
    return-void

    .line 184
    :catch_0
    move-exception v1

    .line 185
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Reseting counter"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
