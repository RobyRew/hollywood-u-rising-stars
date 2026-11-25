.class final Lcom/leanplum/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/leanplum/cm;


# instance fields
.field final synthetic a:Lcom/leanplum/au;


# direct methods
.method constructor <init>(Lcom/leanplum/au;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    invoke-static {v0}, Lcom/leanplum/au;->a(Lcom/leanplum/au;)V

    .line 118
    iget-object v0, p0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    iget-object v0, v0, Lcom/leanplum/au;->b:Lcom/leanplum/ba;

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Unexpected binary data"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/leanplum/ba;->a(Ljava/lang/Exception;)V

    .line 119
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    invoke-static {v0}, Lcom/leanplum/au;->a(Lcom/leanplum/au;)V

    .line 190
    iget-object v0, p0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    iget-object v0, v0, Lcom/leanplum/au;->b:Lcom/leanplum/ba;

    invoke-interface {v0}, Lcom/leanplum/ba;->b()V

    .line 191
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    invoke-static {v0}, Lcom/leanplum/au;->a(Lcom/leanplum/au;)V

    .line 183
    iget-object v0, p0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    iget-object v0, v0, Lcom/leanplum/au;->b:Lcom/leanplum/ba;

    invoke-interface {v0, p1}, Lcom/leanplum/ba;->a(Ljava/lang/Exception;)V

    .line 184
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 125
    :try_start_0
    const-string/jumbo v0, ":"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 126
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 127
    packed-switch v1, :pswitch_data_0

    .line 172
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "unknown code"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    iget-object v1, p0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    invoke-static {v1}, Lcom/leanplum/au;->a(Lcom/leanplum/au;)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/leanplum/aw;->a(Ljava/lang/Exception;)V

    .line 178
    :goto_0
    :pswitch_0
    return-void

    .line 129
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/leanplum/aw;->b()V

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v0, p0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    iget-object v0, v0, Lcom/leanplum/au;->e:Lcom/leanplum/ci;

    const-string/jumbo v1, "2::"

    invoke-virtual {v0, v1}, Lcom/leanplum/ci;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_3
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "message type not supported"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :pswitch_4
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 142
    const/4 v2, 0x3

    aget-object v0, v0, v2

    .line 143
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v0, "name"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 147
    :try_start_2
    const-string/jumbo v0, "args"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 151
    :goto_1
    :try_start_3
    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    iget-object v2, v2, Lcom/leanplum/au;->f:Landroid/os/Handler;

    new-instance v4, Lcom/leanplum/ax;

    invoke-direct {v4, p0, v1}, Lcom/leanplum/ax;-><init>(Lcom/leanplum/aw;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    iget-object v1, v1, Lcom/leanplum/au;->b:Lcom/leanplum/ba;

    invoke-interface {v1, v3, v0}, Lcom/leanplum/ba;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 149
    :catch_1
    move-exception v0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_1

    .line 167
    :pswitch_5
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    iget-object v0, v0, Lcom/leanplum/au;->f:Landroid/os/Handler;

    new-instance v1, Lcom/leanplum/ay;

    invoke-direct {v1, p0}, Lcom/leanplum/ay;-><init>(Lcom/leanplum/aw;)V

    iget-object v2, p0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    iget v2, v2, Lcom/leanplum/au;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    iget-object v0, p0, Lcom/leanplum/aw;->a:Lcom/leanplum/au;

    iget-object v0, v0, Lcom/leanplum/au;->b:Lcom/leanplum/ba;

    invoke-interface {v0}, Lcom/leanplum/ba;->a()V

    .line 203
    return-void
.end method
