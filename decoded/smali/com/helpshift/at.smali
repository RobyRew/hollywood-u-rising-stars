.class Lcom/helpshift/at;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/helpshift/at;->b:Lcom/helpshift/al;

    iput-object p2, p0, Lcom/helpshift/at;->a:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 1131
    iget-object v0, p0, Lcom/helpshift/at;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 1132
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 1134
    if-eqz v0, :cond_0

    .line 1135
    :try_start_0
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1136
    new-instance v1, Lcom/helpshift/l;

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "publish_id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/helpshift/at;->b:Lcom/helpshift/al;

    const-string/jumbo v7, "section_id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/helpshift/al;->a(Lcom/helpshift/al;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "title"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "body"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string/jumbo v12, "is_rtl"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v12, "true"

    if-ne v0, v12, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Lcom/helpshift/l;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V

    .line 1144
    iput-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1145
    iget-object v0, p0, Lcom/helpshift/at;->a:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1146
    iget-object v0, p0, Lcom/helpshift/at;->b:Lcom/helpshift/al;

    invoke-static {v0}, Lcom/helpshift/al;->c(Lcom/helpshift/al;)Lcom/helpshift/bk;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/helpshift/bk;->b(Lcom/helpshift/l;)Lcom/helpshift/l;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v10

    .line 1136
    goto :goto_0

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    const-string/jumbo v1, "HelpShiftDebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception in getting question "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
