.class Lcom/helpshift/ct;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/HSQuestionFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSQuestionFragment;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/helpshift/ct;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/helpshift/l;

    .line 122
    iget-object v1, p0, Lcom/helpshift/ct;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-virtual {v1}, Lcom/helpshift/HSQuestionFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/helpshift/ct;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v1, v0}, Lcom/helpshift/HSQuestionFragment;->a(Lcom/helpshift/HSQuestionFragment;Lcom/helpshift/l;)V

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/helpshift/ct;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v1}, Lcom/helpshift/HSQuestionFragment;->b(Lcom/helpshift/HSQuestionFragment;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/ct;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-virtual {v0}, Lcom/helpshift/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/helpshift/HSQuestionFragment;->a(Lcom/helpshift/HSQuestionFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 133
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/helpshift/ct;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v2}, Lcom/helpshift/HSQuestionFragment;->c(Lcom/helpshift/HSQuestionFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string/jumbo v1, "f"

    invoke-static {v1, v0}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 135
    iget-object v0, p0, Lcom/helpshift/ct;->a:Lcom/helpshift/HSQuestionFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSQuestionFragment;->a(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
