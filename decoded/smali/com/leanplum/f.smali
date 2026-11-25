.class final Lcom/leanplum/f;
.super Lcom/leanplum/callbacks/RegisterDeviceCallback$EmailCallback;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/leanplum/callbacks/RegisterDeviceCallback$EmailCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 777
    if-eqz p1, :cond_0

    .line 778
    :try_start_0
    new-instance v0, Lcom/leanplum/h;

    invoke-direct {v0, p0}, Lcom/leanplum/h;-><init>(Lcom/leanplum/f;)V

    .line 1017
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1018
    const-string/jumbo v2, "email"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    const-string/jumbo v2, "registerDevice"

    invoke-static {v2, v1}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v1

    .line 1020
    new-instance v2, Lcom/leanplum/bs;

    invoke-direct {v2, v0}, Lcom/leanplum/bs;-><init>(Lcom/leanplum/callbacks/StartCallback;)V

    invoke-virtual {v1, v2}, Lcom/leanplum/y;->a(Lcom/leanplum/bi;)V

    .line 1046
    new-instance v2, Lcom/leanplum/bu;

    invoke-direct {v2, v0}, Lcom/leanplum/bu;-><init>(Lcom/leanplum/callbacks/StartCallback;)V

    invoke-virtual {v1, v2}, Lcom/leanplum/y;->a(Lcom/leanplum/bg;)V

    .line 1059
    invoke-virtual {v1}, Lcom/leanplum/y;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
