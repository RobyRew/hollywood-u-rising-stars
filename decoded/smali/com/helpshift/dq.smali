.class Lcom/helpshift/dq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/helpshift/do;


# direct methods
.method constructor <init>(Lcom/helpshift/do;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/helpshift/dq;->a:Lcom/helpshift/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/helpshift/dq;->a:Lcom/helpshift/do;

    invoke-static {v0}, Lcom/helpshift/do;->c(Lcom/helpshift/do;)V

    .line 134
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/dq;->a:Lcom/helpshift/do;

    invoke-static {v1}, Lcom/helpshift/do;->d(Lcom/helpshift/do;)Lcom/helpshift/m;

    move-result-object v1

    const-class v2, Lcom/helpshift/HSConversation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/helpshift/dq;->a:Lcom/helpshift/do;

    invoke-static {v2}, Lcom/helpshift/do;->e(Lcom/helpshift/do;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/helpshift/dq;->a:Lcom/helpshift/do;

    invoke-static {v1}, Lcom/helpshift/do;->b(Lcom/helpshift/do;)Lcom/helpshift/app/a;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/dq;->a:Lcom/helpshift/do;

    invoke-static {v2}, Lcom/helpshift/do;->a(Lcom/helpshift/do;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpshift/app/a;->a(Landroid/view/MenuItem;)V

    .line 137
    const-string/jumbo v1, "showInFullScreen"

    iget-object v2, p0, Lcom/helpshift/dq;->a:Lcom/helpshift/do;

    invoke-static {v2}, Lcom/helpshift/do;->d(Lcom/helpshift/do;)Lcom/helpshift/m;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/e/c;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 138
    const-string/jumbo v1, "showConvOnReportIssue"

    iget-object v2, p0, Lcom/helpshift/dq;->a:Lcom/helpshift/do;

    invoke-static {v2}, Lcom/helpshift/do;->d(Lcom/helpshift/do;)Lcom/helpshift/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpshift/m;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "showConvOnReportIssue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    const-string/jumbo v1, "chatLaunchSource"

    const-string/jumbo v2, "support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/helpshift/dq;->a:Lcom/helpshift/do;

    invoke-virtual {v1}, Lcom/helpshift/do;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 141
    return-void
.end method
