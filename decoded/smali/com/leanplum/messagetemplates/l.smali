.class final Lcom/leanplum/messagetemplates/l;
.super Lcom/leanplum/callbacks/VariablesChangedCallback;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/leanplum/messagetemplates/k;


# direct methods
.method constructor <init>(Lcom/leanplum/messagetemplates/k;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/leanplum/messagetemplates/l;->a:Lcom/leanplum/messagetemplates/k;

    invoke-direct {p0}, Lcom/leanplum/callbacks/VariablesChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final variablesChanged()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/leanplum/messagetemplates/CenterPopup;

    invoke-static {}, Lcom/leanplum/LeanplumActivityHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/leanplum/messagetemplates/CenterPopupOptions;

    iget-object v3, p0, Lcom/leanplum/messagetemplates/l;->a:Lcom/leanplum/messagetemplates/k;

    iget-object v3, v3, Lcom/leanplum/messagetemplates/k;->a:Lcom/leanplum/ActionContext;

    invoke-direct {v2, v3}, Lcom/leanplum/messagetemplates/CenterPopupOptions;-><init>(Lcom/leanplum/ActionContext;)V

    invoke-direct {v0, v1, v2}, Lcom/leanplum/messagetemplates/CenterPopup;-><init>(Landroid/app/Activity;Lcom/leanplum/messagetemplates/CenterPopupOptions;)V

    .line 41
    invoke-virtual {v0}, Lcom/leanplum/messagetemplates/CenterPopup;->show()V

    .line 42
    return-void
.end method
