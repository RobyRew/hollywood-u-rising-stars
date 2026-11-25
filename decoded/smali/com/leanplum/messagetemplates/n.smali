.class final Lcom/leanplum/messagetemplates/n;
.super Lcom/leanplum/callbacks/VariablesChangedCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/leanplum/ActionContext;


# direct methods
.method constructor <init>(Lcom/leanplum/messagetemplates/m;Lcom/leanplum/ActionContext;)V
    .locals 0

    .prologue
    .line 40
    iput-object p2, p0, Lcom/leanplum/messagetemplates/n;->a:Lcom/leanplum/ActionContext;

    invoke-direct {p0}, Lcom/leanplum/callbacks/VariablesChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final variablesChanged()V
    .locals 4

    .prologue
    .line 43
    invoke-static {}, Lcom/leanplum/LeanplumActivityHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 44
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object v0, p0, Lcom/leanplum/messagetemplates/n;->a:Lcom/leanplum/ActionContext;

    const-string/jumbo v2, "Title"

    invoke-virtual {v0, v2}, Lcom/leanplum/ActionContext;->stringNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/leanplum/messagetemplates/n;->a:Lcom/leanplum/ActionContext;

    const-string/jumbo v3, "Message"

    invoke-virtual {v2, v3}, Lcom/leanplum/ActionContext;->stringNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/leanplum/messagetemplates/n;->a:Lcom/leanplum/ActionContext;

    const-string/jumbo v3, "Accept text"

    invoke-virtual {v2, v3}, Lcom/leanplum/ActionContext;->stringNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/leanplum/messagetemplates/p;

    invoke-direct {v3, p0}, Lcom/leanplum/messagetemplates/p;-><init>(Lcom/leanplum/messagetemplates/n;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/leanplum/messagetemplates/n;->a:Lcom/leanplum/ActionContext;

    const-string/jumbo v3, "Cancel text"

    invoke-virtual {v2, v3}, Lcom/leanplum/ActionContext;->stringNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/leanplum/messagetemplates/o;

    invoke-direct {v3, p0}, Lcom/leanplum/messagetemplates/o;-><init>(Lcom/leanplum/messagetemplates/n;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 64
    return-void
.end method
