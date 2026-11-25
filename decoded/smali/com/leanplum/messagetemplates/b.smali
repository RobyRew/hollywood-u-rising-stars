.class final Lcom/leanplum/messagetemplates/b;
.super Lcom/leanplum/callbacks/ActionCallback;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/leanplum/callbacks/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Lcom/leanplum/ActionContext;)Z
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/leanplum/messagetemplates/c;

    invoke-direct {v0, p0, p1}, Lcom/leanplum/messagetemplates/c;-><init>(Lcom/leanplum/messagetemplates/b;Lcom/leanplum/ActionContext;)V

    invoke-static {v0}, Lcom/leanplum/LeanplumActivityHelper;->queueActionUponActive(Lcom/leanplum/callbacks/VariablesChangedCallback;)V

    .line 58
    const/4 v0, 0x1

    return v0
.end method
