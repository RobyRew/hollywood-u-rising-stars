.class Lcom/helpshift/z;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/s;


# direct methods
.method constructor <init>(Lcom/helpshift/s;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/helpshift/z;->a:Lcom/helpshift/s;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 169
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 170
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 172
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 173
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "url"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string/jumbo v2, "body"

    const-string/jumbo v3, "meta"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "attachments"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/helpshift/z;->a:Lcom/helpshift/s;

    invoke-static {v3}, Lcom/helpshift/s;->g(Lcom/helpshift/s;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string/jumbo v2, "m"

    invoke-static {v2, v1}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 179
    iget-object v1, p0, Lcom/helpshift/z;->a:Lcom/helpshift/s;

    invoke-virtual {v1}, Lcom/helpshift/s;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/z;->a:Lcom/helpshift/s;

    invoke-static {v2}, Lcom/helpshift/s;->m(Lcom/helpshift/s;)Lcom/helpshift/al;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/z;->a:Lcom/helpshift/s;

    invoke-static {v3}, Lcom/helpshift/s;->f(Lcom/helpshift/s;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/helpshift/e/b;->a(Landroid/app/Activity;Lcom/helpshift/al;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    :goto_0
    :try_start_1
    const-string/jumbo v1, "meta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "refers"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/helpshift/z;->a:Lcom/helpshift/s;

    invoke-static {v1}, Lcom/helpshift/s;->b(Lcom/helpshift/s;)Lcom/helpshift/dx;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/z;->a:Lcom/helpshift/s;

    invoke-static {v2}, Lcom/helpshift/s;->g(Lcom/helpshift/s;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/helpshift/z;->a:Lcom/helpshift/s;

    invoke-static {v0}, Lcom/helpshift/s;->m(Lcom/helpshift/s;)Lcom/helpshift/al;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/z;->a:Lcom/helpshift/s;

    invoke-static {v1}, Lcom/helpshift/s;->o(Lcom/helpshift/s;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/z;->a:Lcom/helpshift/s;

    invoke-static {v2}, Lcom/helpshift/s;->o(Lcom/helpshift/s;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/al;->c(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 196
    :goto_1
    return-void

    .line 181
    :catch_0
    move-exception v1

    .line 182
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Saving uploaded screenshot"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 183
    :catch_1
    move-exception v1

    .line 184
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "uploadSuccessHandler"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 193
    :catch_2
    move-exception v0

    .line 194
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "uploadSuccessHandler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
