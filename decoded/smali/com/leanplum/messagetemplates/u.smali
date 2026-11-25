.class final Lcom/leanplum/messagetemplates/u;
.super Lcom/leanplum/callbacks/ActionCallback;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/leanplum/callbacks/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Lcom/leanplum/ActionContext;)Z
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/leanplum/messagetemplates/v;

    invoke-direct {v0, p0, p1}, Lcom/leanplum/messagetemplates/v;-><init>(Lcom/leanplum/messagetemplates/u;Lcom/leanplum/ActionContext;)V

    invoke-static {v0}, Lcom/leanplum/LeanplumActivityHelper;->queueActionUponActive(Lcom/leanplum/callbacks/VariablesChangedCallback;)V

    .line 41
    const/4 v0, 0x1

    return v0
.end method
