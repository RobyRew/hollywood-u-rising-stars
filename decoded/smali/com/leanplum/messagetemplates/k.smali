.class final Lcom/leanplum/messagetemplates/k;
.super Lcom/leanplum/callbacks/VariablesChangedCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/leanplum/ActionContext;


# direct methods
.method constructor <init>(Lcom/leanplum/messagetemplates/j;Lcom/leanplum/ActionContext;)V
    .locals 0

    .prologue
    .line 32
    iput-object p2, p0, Lcom/leanplum/messagetemplates/k;->a:Lcom/leanplum/ActionContext;

    invoke-direct {p0}, Lcom/leanplum/callbacks/VariablesChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final variablesChanged()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/leanplum/messagetemplates/l;

    invoke-direct {v0, p0}, Lcom/leanplum/messagetemplates/l;-><init>(Lcom/leanplum/messagetemplates/k;)V

    invoke-static {v0}, Lcom/leanplum/LeanplumActivityHelper;->queueActionUponActive(Lcom/leanplum/callbacks/VariablesChangedCallback;)V

    .line 44
    return-void
.end method
