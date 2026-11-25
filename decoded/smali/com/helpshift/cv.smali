.class Lcom/helpshift/cv;
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
    .line 305
    iput-object p1, p0, Lcom/helpshift/cv;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 308
    iget-object v0, p0, Lcom/helpshift/cv;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSQuestionFragment;->b(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 309
    iget-object v0, p0, Lcom/helpshift/cv;->a:Lcom/helpshift/HSQuestionFragment;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/helpshift/cv;->a:Lcom/helpshift/HSQuestionFragment;

    iget-object v2, v2, Lcom/helpshift/HSQuestionFragment;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/helpshift/cv;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v3}, Lcom/helpshift/HSQuestionFragment;->c(Lcom/helpshift/HSQuestionFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/helpshift/HSQuestionFragment;->a(Lcom/helpshift/HSQuestionFragment;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 310
    const-string/jumbo v0, "h"

    iget-object v1, p0, Lcom/helpshift/cv;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v1}, Lcom/helpshift/HSQuestionFragment;->d(Lcom/helpshift/HSQuestionFragment;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 311
    iget-object v0, p0, Lcom/helpshift/cv;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v0}, Lcom/helpshift/HSQuestionFragment;->e(Lcom/helpshift/HSQuestionFragment;)V

    .line 312
    iget-object v0, p0, Lcom/helpshift/cv;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/HSQuestionFragment;->c(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)V

    .line 313
    iget-object v0, p0, Lcom/helpshift/cv;->a:Lcom/helpshift/HSQuestionFragment;

    invoke-virtual {v0}, Lcom/helpshift/HSQuestionFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/helpshift/cv;->a:Lcom/helpshift/HSQuestionFragment;

    const-string/jumbo v1, "ticketAvoided"

    invoke-static {v0, v1}, Lcom/helpshift/HSQuestionFragment;->b(Lcom/helpshift/HSQuestionFragment;Ljava/lang/String;)V

    .line 316
    :cond_0
    return-void
.end method
