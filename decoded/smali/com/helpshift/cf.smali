.class Lcom/helpshift/cf;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;I)V
    .locals 0

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/helpshift/cf;->b:Lcom/helpshift/bu;

    iput p2, p0, Lcom/helpshift/cf;->a:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1057
    iget-object v0, p0, Lcom/helpshift/cf;->b:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->r(Lcom/helpshift/bu;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/helpshift/cf;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/g/a;

    .line 1058
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/g/a;->i:Ljava/lang/Boolean;

    .line 1059
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/g/a;->k:Ljava/lang/Boolean;

    .line 1061
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/cf;->b:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->j(Lcom/helpshift/bu;)Lcom/helpshift/al;

    move-result-object v1

    iget-object v2, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpshift/cf;->b:Lcom/helpshift/bu;

    invoke-static {v3}, Lcom/helpshift/bu;->q(Lcom/helpshift/bu;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/helpshift/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :goto_0
    iget-object v1, p0, Lcom/helpshift/cf;->b:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->c(Lcom/helpshift/bu;)Lcom/helpshift/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/a/a;->notifyDataSetChanged()V

    .line 1067
    iget-object v1, p0, Lcom/helpshift/cf;->b:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->r(Lcom/helpshift/bu;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/helpshift/cf;->a:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1068
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 1069
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1070
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helpshift/cf;->b:Lcom/helpshift/bu;

    invoke-static {v2}, Lcom/helpshift/bu;->f(Lcom/helpshift/bu;)Lcom/helpshift/m;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/helpshift/e/u;->a(ILandroid/app/ProgressDialog;Landroid/content/Context;)V

    .line 1071
    return-void

    .line 1062
    :catch_0
    move-exception v1

    .line 1063
    const-string/jumbo v2, "HelpShiftDebug"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
