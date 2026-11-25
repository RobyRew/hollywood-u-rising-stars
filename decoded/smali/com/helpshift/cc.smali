.class Lcom/helpshift/cc;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;I)V
    .locals 0

    .prologue
    .line 878
    iput-object p1, p0, Lcom/helpshift/cc;->b:Lcom/helpshift/bu;

    iput p2, p0, Lcom/helpshift/cc;->a:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 880
    iget-object v0, p0, Lcom/helpshift/cc;->b:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->r(Lcom/helpshift/bu;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/helpshift/cc;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/g/a;

    .line 881
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/g/a;->i:Ljava/lang/Boolean;

    .line 882
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/g/a;->j:Ljava/lang/Boolean;

    .line 883
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/g/a;->k:Ljava/lang/Boolean;

    .line 884
    iget-object v1, p0, Lcom/helpshift/cc;->b:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->c(Lcom/helpshift/bu;)Lcom/helpshift/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/a/a;->notifyDataSetChanged()V

    .line 886
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/cc;->b:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->j(Lcom/helpshift/bu;)Lcom/helpshift/al;

    move-result-object v1

    iget-object v2, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpshift/cc;->b:Lcom/helpshift/bu;

    invoke-static {v3}, Lcom/helpshift/bu;->q(Lcom/helpshift/bu;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/helpshift/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 887
    iget-object v1, p0, Lcom/helpshift/cc;->b:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->j(Lcom/helpshift/bu;)Lcom/helpshift/al;

    move-result-object v1

    iget-object v0, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/cc;->b:Lcom/helpshift/bu;

    invoke-static {v2}, Lcom/helpshift/bu;->q(Lcom/helpshift/bu;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/helpshift/al;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    iget-object v0, p0, Lcom/helpshift/cc;->b:Lcom/helpshift/bu;

    invoke-static {v0, p1}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;Landroid/os/Message;)V

    .line 893
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 894
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "conversation"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 895
    const-string/jumbo v1, "r"

    invoke-static {v1, v0}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 897
    iget-object v0, p0, Lcom/helpshift/cc;->b:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->l(Lcom/helpshift/bu;)Lcom/helpshift/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/dx;->y()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "rurl"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 899
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 900
    iget-object v1, p0, Lcom/helpshift/cc;->b:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->j(Lcom/helpshift/bu;)Lcom/helpshift/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/al;->k()V

    .line 901
    iget-object v1, p0, Lcom/helpshift/cc;->b:Lcom/helpshift/bu;

    invoke-static {v1, v0}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 906
    :cond_0
    :goto_1
    return-void

    .line 888
    :catch_0
    move-exception v0

    .line 889
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 903
    :catch_1
    move-exception v0

    .line 904
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
