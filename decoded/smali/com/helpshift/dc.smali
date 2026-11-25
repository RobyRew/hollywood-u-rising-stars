.class Lcom/helpshift/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/helpshift/da;


# direct methods
.method constructor <init>(Lcom/helpshift/da;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/helpshift/dc;->a:Lcom/helpshift/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 112
    const-string/jumbo v0, "feedback"

    invoke-static {v0}, Lcom/helpshift/br;->b(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/helpshift/dc;->a:Lcom/helpshift/da;

    sget-object v1, Lcom/helpshift/ef;->b:Lcom/helpshift/ef;

    invoke-static {v0, v1}, Lcom/helpshift/da;->a(Lcom/helpshift/da;Lcom/helpshift/ef;)V

    .line 114
    iget-object v0, p0, Lcom/helpshift/dc;->a:Lcom/helpshift/da;

    invoke-static {v0}, Lcom/helpshift/da;->b(Lcom/helpshift/da;)Lcom/helpshift/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/dx;->W()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/dc;->a:Lcom/helpshift/da;

    invoke-virtual {v1}, Lcom/helpshift/da;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/helpshift/HSConversation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string/jumbo v1, "decomp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    const-string/jumbo v1, "showInFullScreen"

    iget-object v2, p0, Lcom/helpshift/dc;->a:Lcom/helpshift/da;

    invoke-virtual {v2}, Lcom/helpshift/da;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/e/c;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 119
    const-string/jumbo v1, "chatLaunchSource"

    const-string/jumbo v2, "support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/helpshift/dc;->a:Lcom/helpshift/da;

    invoke-virtual {v1}, Lcom/helpshift/da;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    :cond_0
    return-void
.end method
