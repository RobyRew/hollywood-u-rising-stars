.class Lcom/helpshift/cw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/helpshift/HSQuestionFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSQuestionFragment;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/helpshift/cw;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 323
    iget-object v0, p0, Lcom/helpshift/cw;->a:Lcom/helpshift/HSQuestionFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSQuestionFragment;->d(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 324
    iget-object v0, p0, Lcom/helpshift/cw;->a:Lcom/helpshift/HSQuestionFragment;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/helpshift/cw;->a:Lcom/helpshift/HSQuestionFragment;

    iget-object v2, v2, Lcom/helpshift/HSQuestionFragment;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/helpshift/cw;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v3}, Lcom/helpshift/HSQuestionFragment;->c(Lcom/helpshift/HSQuestionFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/helpshift/HSQuestionFragment;->a(Lcom/helpshift/HSQuestionFragment;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 325
    const-string/jumbo v0, "u"

    iget-object v1, p0, Lcom/helpshift/cw;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v1}, Lcom/helpshift/HSQuestionFragment;->d(Lcom/helpshift/HSQuestionFragment;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 326
    iget-object v0, p0, Lcom/helpshift/cw;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v0}, Lcom/helpshift/HSQuestionFragment;->f(Lcom/helpshift/HSQuestionFragment;)V

    .line 327
    iget-object v0, p0, Lcom/helpshift/cw;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSQuestionFragment;->c(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)V

    .line 328
    return-void
.end method
