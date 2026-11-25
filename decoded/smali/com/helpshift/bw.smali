.class Lcom/helpshift/bw;
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
    .line 634
    iput-object p1, p0, Lcom/helpshift/bw;->a:Lcom/helpshift/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 637
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/bw;->a:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->f(Lcom/helpshift/bu;)Lcom/helpshift/m;

    move-result-object v1

    const-class v2, Lcom/helpshift/HSConversation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 638
    const-string/jumbo v1, "showInFullScreen"

    iget-object v2, p0, Lcom/helpshift/bw;->a:Lcom/helpshift/bu;

    invoke-static {v2}, Lcom/helpshift/bu;->f(Lcom/helpshift/bu;)Lcom/helpshift/m;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/e/c;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 639
    const-string/jumbo v1, "newConversation"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 640
    iget-object v1, p0, Lcom/helpshift/bw;->a:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->n(Lcom/helpshift/bu;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 641
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/helpshift/bw;->a:Lcom/helpshift/bu;

    invoke-virtual {v1}, Lcom/helpshift/bu;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 643
    iget-object v0, p0, Lcom/helpshift/bw;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->l(Lcom/helpshift/bu;)Lcom/helpshift/dx;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->q(Ljava/lang/String;)V

    .line 644
    return-void
.end method
