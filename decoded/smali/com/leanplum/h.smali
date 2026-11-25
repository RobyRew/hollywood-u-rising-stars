.class final Lcom/leanplum/h;
.super Lcom/leanplum/callbacks/StartCallback;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/leanplum/f;)V
    .locals 0

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/leanplum/callbacks/StartCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Z)V
    .locals 2

    .prologue
    .line 781
    invoke-static {}, Lcom/leanplum/Leanplum;->f()Lcom/leanplum/callbacks/RegisterDeviceFinishedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    invoke-static {}, Lcom/leanplum/Leanplum;->f()Lcom/leanplum/callbacks/RegisterDeviceFinishedCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leanplum/callbacks/RegisterDeviceFinishedCallback;->setSuccess(Z)V

    .line 783
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v0

    invoke-static {}, Lcom/leanplum/Leanplum;->f()Lcom/leanplum/callbacks/RegisterDeviceFinishedCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    .line 785
    :cond_0
    if-eqz p1, :cond_1

    .line 787
    :try_start_0
    invoke-static {}, Lcom/leanplum/Leanplum;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    :cond_1
    :goto_0
    return-void

    .line 788
    :catch_0
    move-exception v0

    .line 789
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
