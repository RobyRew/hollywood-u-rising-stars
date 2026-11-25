.class Lcom/helpshift/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/helpshift/HSFaqsFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/HSFaqsFragment;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/helpshift/bo;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/helpshift/bo;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v0}, Lcom/helpshift/HSFaqsFragment;->c(Lcom/helpshift/HSFaqsFragment;)V

    .line 142
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/bo;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v1}, Lcom/helpshift/HSFaqsFragment;->d(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/m;

    move-result-object v1

    const-class v2, Lcom/helpshift/HSConversation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/helpshift/bo;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v2}, Lcom/helpshift/HSFaqsFragment;->e(Lcom/helpshift/HSFaqsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/helpshift/bo;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v1}, Lcom/helpshift/HSFaqsFragment;->b(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/app/a;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/bo;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v2}, Lcom/helpshift/HSFaqsFragment;->a(Lcom/helpshift/HSFaqsFragment;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/app/a;->a(Landroid/view/MenuItem;)V

    .line 145
    const-string/jumbo v1, "showInFullScreen"

    iget-object v2, p0, Lcom/helpshift/bo;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v2}, Lcom/helpshift/HSFaqsFragment;->d(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/m;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/e/c;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 146
    const-string/jumbo v1, "showConvOnReportIssue"

    iget-object v2, p0, Lcom/helpshift/bo;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v2}, Lcom/helpshift/HSFaqsFragment;->f(Lcom/helpshift/HSFaqsFragment;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "showConvOnReportIssue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    const-string/jumbo v1, "chatLaunchSource"

    const-string/jumbo v2, "support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v1, "decomp"

    iget-object v2, p0, Lcom/helpshift/bo;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-static {v2}, Lcom/helpshift/HSFaqsFragment;->g(Lcom/helpshift/HSFaqsFragment;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/helpshift/bo;->a:Lcom/helpshift/HSFaqsFragment;

    invoke-virtual {v1}, Lcom/helpshift/HSFaqsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 150
    return-void
.end method
