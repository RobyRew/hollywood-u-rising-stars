.class final Lcom/leanplum/df;
.super Lcom/leanplum/callbacks/VariablesChangedCallback;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/leanplum/ActionContext;


# direct methods
.method constructor <init>(Lcom/leanplum/ActionContext;)V
    .locals 0

    .prologue
    .line 1598
    iput-object p1, p0, Lcom/leanplum/df;->a:Lcom/leanplum/ActionContext;

    invoke-direct {p0}, Lcom/leanplum/callbacks/VariablesChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final variablesChanged()V
    .locals 2

    .prologue
    .line 1602
    :try_start_0
    invoke-static {}, Lcom/leanplum/Leanplum;->j()Lcom/leanplum/cq;

    move-result-object v0

    iget-object v1, p0, Lcom/leanplum/df;->a:Lcom/leanplum/ActionContext;

    invoke-virtual {v1}, Lcom/leanplum/ActionContext;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leanplum/cq;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1606
    :goto_0
    return-void

    .line 1603
    :catch_0
    move-exception v0

    .line 1604
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
