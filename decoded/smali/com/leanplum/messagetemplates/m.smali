.class final Lcom/leanplum/messagetemplates/m;
.super Lcom/leanplum/callbacks/ActionCallback;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/leanplum/callbacks/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Lcom/leanplum/ActionContext;)Z
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/leanplum/messagetemplates/n;

    invoke-direct {v0, p0, p1}, Lcom/leanplum/messagetemplates/n;-><init>(Lcom/leanplum/messagetemplates/m;Lcom/leanplum/ActionContext;)V

    invoke-static {v0}, Lcom/leanplum/LeanplumActivityHelper;->queueActionUponActive(Lcom/leanplum/callbacks/VariablesChangedCallback;)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method
