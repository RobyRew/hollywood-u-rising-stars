.class final Lcom/leanplum/t;
.super Lcom/leanplum/callbacks/VariablesChangedCallback;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/leanplum/t;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/leanplum/callbacks/VariablesChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final variablesChanged()V
    .locals 5

    .prologue
    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/t;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/leanplum/LeanplumPushService;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    iget-object v1, p0, Lcom/leanplum/t;->a:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/leanplum/LeanplumPushService;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 315
    const-string/jumbo v2, "Open action"

    iget-object v3, p0, Lcom/leanplum/t;->a:Landroid/os/Bundle;

    const-string/jumbo v4, "_lpx"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/leanplum/co;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v2, Lcom/leanplum/ActionContext;

    sget-object v3, Lcom/leanplum/cq;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0}, Lcom/leanplum/ActionContext;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v2}, Lcom/leanplum/ActionContext;->a()V

    .line 320
    invoke-virtual {v2}, Lcom/leanplum/ActionContext;->b()V

    .line 321
    const-string/jumbo v0, "Open action"

    invoke-virtual {v2, v0}, Lcom/leanplum/ActionContext;->runTrackedActionNamed(Ljava/lang/String;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    new-instance v1, Lcom/leanplum/u;

    invoke-direct {v1, p0, v0}, Lcom/leanplum/u;-><init>(Lcom/leanplum/t;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/leanplum/Leanplum;->addOnceVariablesChangedAndNoDownloadsPendingHandler(Lcom/leanplum/callbacks/VariablesChangedCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
