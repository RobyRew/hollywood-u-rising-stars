.class Lcom/helpshift/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/helpshift/bx;->a:Lcom/helpshift/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 685
    iget-object v0, p0, Lcom/helpshift/bx;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->k(Lcom/helpshift/bu;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 686
    iget-object v0, p0, Lcom/helpshift/bx;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->l(Lcom/helpshift/bu;)Lcom/helpshift/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    .line 688
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/helpshift/bx;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->k(Lcom/helpshift/bu;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v0, p0, Lcom/helpshift/bx;->a:Lcom/helpshift/bu;

    iget-object v1, p0, Lcom/helpshift/bx;->a:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->o(Lcom/helpshift/bu;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/bx;->a:Lcom/helpshift/bu;

    invoke-static {v2}, Lcom/helpshift/bu;->p(Lcom/helpshift/bu;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/bx;->a:Lcom/helpshift/bu;

    invoke-static {v3}, Lcom/helpshift/bu;->q(Lcom/helpshift/bu;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "txt"

    const-string/jumbo v6, ""

    invoke-static/range {v0 .. v6}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 694
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "txt"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 695
    const-string/jumbo v1, "body"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 696
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/helpshift/bx;->a:Lcom/helpshift/bu;

    invoke-static {v2}, Lcom/helpshift/bu;->q(Lcom/helpshift/bu;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 697
    const-string/jumbo v1, "m"

    invoke-static {v1, v0}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 698
    :catch_0
    move-exception v0

    .line 699
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
