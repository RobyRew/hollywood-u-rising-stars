.class Lcom/helpshift/ca;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;I)V
    .locals 0

    .prologue
    .line 809
    iput-object p1, p0, Lcom/helpshift/ca;->b:Lcom/helpshift/bu;

    iput p2, p0, Lcom/helpshift/ca;->a:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 811
    iget-object v0, p0, Lcom/helpshift/ca;->b:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->r(Lcom/helpshift/bu;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/helpshift/ca;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/g/a;

    .line 812
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/g/a;->i:Ljava/lang/Boolean;

    .line 813
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/g/a;->j:Ljava/lang/Boolean;

    .line 814
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/g/a;->k:Ljava/lang/Boolean;

    .line 815
    iget-object v1, p0, Lcom/helpshift/ca;->b:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->c(Lcom/helpshift/bu;)Lcom/helpshift/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/a/a;->notifyDataSetChanged()V

    .line 817
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/ca;->b:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->j(Lcom/helpshift/bu;)Lcom/helpshift/al;

    move-result-object v1

    iget-object v2, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpshift/ca;->b:Lcom/helpshift/bu;

    invoke-static {v3}, Lcom/helpshift/bu;->q(Lcom/helpshift/bu;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v1, p0, Lcom/helpshift/ca;->b:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->j(Lcom/helpshift/bu;)Lcom/helpshift/al;

    move-result-object v1

    iget-object v0, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/ca;->b:Lcom/helpshift/bu;

    invoke-static {v2}, Lcom/helpshift/bu;->q(Lcom/helpshift/bu;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/helpshift/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :goto_0
    iget-object v0, p0, Lcom/helpshift/ca;->b:Lcom/helpshift/bu;

    invoke-static {v0, p1}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;Landroid/os/Message;)V

    .line 823
    return-void

    .line 819
    :catch_0
    move-exception v0

    .line 820
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
