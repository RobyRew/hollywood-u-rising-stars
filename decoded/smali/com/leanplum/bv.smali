.class final Lcom/leanplum/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/leanplum/bu;


# direct methods
.method constructor <init>(Lcom/leanplum/bu;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/leanplum/bv;->a:Lcom/leanplum/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/leanplum/bv;->a:Lcom/leanplum/bu;

    iget-object v0, v0, Lcom/leanplum/bu;->a:Lcom/leanplum/callbacks/StartCallback;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/leanplum/bv;->a:Lcom/leanplum/bu;

    iget-object v0, v0, Lcom/leanplum/bu;->a:Lcom/leanplum/callbacks/StartCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leanplum/callbacks/StartCallback;->onResponse(Z)V

    .line 55
    :cond_0
    return-void
.end method
