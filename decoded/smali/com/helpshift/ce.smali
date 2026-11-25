.class Lcom/helpshift/ce;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;I)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    iput p2, p0, Lcom/helpshift/ce;->a:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->r(Lcom/helpshift/bu;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/helpshift/ce;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/g/a;

    .line 1010
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 1011
    const-string/jumbo v2, "response"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 1014
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1015
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "url"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1016
    const-string/jumbo v3, "body"

    const-string/jumbo v4, "meta"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v4, "attachments"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1017
    const-string/jumbo v1, "id"

    iget-object v3, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    invoke-static {v3}, Lcom/helpshift/bu;->q(Lcom/helpshift/bu;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1018
    const-string/jumbo v1, "m"

    invoke-static {v1, v2}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    invoke-virtual {v1}, Lcom/helpshift/bu;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    invoke-static {v2}, Lcom/helpshift/bu;->j(Lcom/helpshift/bu;)Lcom/helpshift/al;

    move-result-object v2

    iget-object v3, v0, Lcom/helpshift/g/a;->h:Ljava/lang/String;

    iget-object v4, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/helpshift/e/b;->a(Landroid/app/Activity;Lcom/helpshift/al;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1033
    :goto_1
    :try_start_2
    iget-object v1, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    const-string/jumbo v2, "localRscMessage_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->l(Lcom/helpshift/bu;)Lcom/helpshift/dx;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    invoke-static {v2}, Lcom/helpshift/bu;->q(Lcom/helpshift/bu;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->r(Lcom/helpshift/bu;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/helpshift/ce;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1050
    :goto_2
    iget-object v0, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->c(Lcom/helpshift/bu;)Lcom/helpshift/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/a/a;->notifyDataSetChanged()V

    .line 1051
    iget-object v0, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    invoke-static {v0, p1}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;Landroid/os/Message;)V

    .line 1052
    return-void

    .line 1019
    :catch_0
    move-exception v1

    .line 1020
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Error while getting screenshot url"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1027
    :catch_1
    move-exception v1

    .line 1028
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Saving uploaded screenshot"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1037
    :cond_0
    const/4 v1, 0x0

    :try_start_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/g/a;->k:Ljava/lang/Boolean;

    .line 1038
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/g/a;->j:Ljava/lang/Boolean;

    .line 1039
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/helpshift/g/a;->h:Ljava/lang/String;

    .line 1040
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/g/a;->i:Ljava/lang/Boolean;

    .line 1042
    iget-object v1, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->j(Lcom/helpshift/bu;)Lcom/helpshift/al;

    move-result-object v1

    iget-object v2, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    invoke-static {v3}, Lcom/helpshift/bu;->q(Lcom/helpshift/bu;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/helpshift/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1043
    iget-object v1, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->j(Lcom/helpshift/bu;)Lcom/helpshift/al;

    move-result-object v1

    iget-object v2, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    invoke-static {v3}, Lcom/helpshift/bu;->q(Lcom/helpshift/bu;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v1, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->j(Lcom/helpshift/bu;)Lcom/helpshift/al;

    move-result-object v1

    iget-object v0, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/ce;->b:Lcom/helpshift/bu;

    invoke-static {v2}, Lcom/helpshift/bu;->q(Lcom/helpshift/bu;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v1, v0, v2, v3}, Lcom/helpshift/al;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1046
    :catch_2
    move-exception v0

    .line 1047
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method
