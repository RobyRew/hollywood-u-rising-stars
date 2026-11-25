.class final Lcom/leanplum/messagetemplates/r;
.super Lcom/leanplum/callbacks/VariablesChangedCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/leanplum/ActionContext;


# direct methods
.method constructor <init>(Lcom/leanplum/messagetemplates/q;Lcom/leanplum/ActionContext;)V
    .locals 0

    .prologue
    .line 33
    iput-object p2, p0, Lcom/leanplum/messagetemplates/r;->a:Lcom/leanplum/ActionContext;

    invoke-direct {p0}, Lcom/leanplum/callbacks/VariablesChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final variablesChanged()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/leanplum/messagetemplates/s;

    invoke-direct {v0, p0}, Lcom/leanplum/messagetemplates/s;-><init>(Lcom/leanplum/messagetemplates/r;)V

    invoke-static {v0}, Lcom/leanplum/LeanplumActivityHelper;->queueActionUponActive(Lcom/leanplum/callbacks/VariablesChangedCallback;)V

    .line 45
    return-void
.end method
