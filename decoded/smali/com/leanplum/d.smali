.class final Lcom/leanplum/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/leanplum/bg;


# instance fields
.field private synthetic a:Lcom/leanplum/callbacks/VariablesChangedCallback;


# direct methods
.method constructor <init>(Lcom/leanplum/callbacks/VariablesChangedCallback;)V
    .locals 0

    .prologue
    .line 2331
    iput-object p1, p0, Lcom/leanplum/d;->a:Lcom/leanplum/callbacks/VariablesChangedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/leanplum/d;->a:Lcom/leanplum/callbacks/VariablesChangedCallback;

    if-eqz v0, :cond_0

    .line 2335
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v0

    iget-object v1, p0, Lcom/leanplum/d;->a:Lcom/leanplum/callbacks/VariablesChangedCallback;

    invoke-virtual {v0, v1}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    .line 2337
    :cond_0
    return-void
.end method
