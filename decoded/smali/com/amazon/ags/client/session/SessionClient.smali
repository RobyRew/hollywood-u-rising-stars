.class public Lcom/amazon/ags/client/session/SessionClient;
.super Lcom/amazon/ags/client/ClientBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/amazon/ags/client/ClientBase;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/html5/service/ServiceHelper;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/ClientBase;-><init>(Lcom/amazon/ags/html5/service/ServiceHelper;)V

    .line 37
    return-void
.end method


# virtual methods
.method public initializeSession()Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/client/session/InitializeSessionResponse;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/amazon/ags/client/session/SessionClient;->isClientReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, v2}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 42
    new-instance v1, Lcom/amazon/ags/client/session/InitializeSessionResponse;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/session/InitializeSessionResponse;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 43
    iget-object v1, p0, Lcom/amazon/ags/client/session/SessionClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initializeSession called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/ags/client/session/SessionClient$1;

    const-string/jumbo v1, "GameCircle.initialize"

    invoke-direct {v0, p0, v1}, Lcom/amazon/ags/client/session/SessionClient$1;-><init>(Lcom/amazon/ags/client/session/SessionClient;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/amazon/ags/client/session/SessionClient$1;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public isWhispersyncEnabled()Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/client/session/WhispersyncEnabledResponse;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/amazon/ags/client/session/SessionClient;->isClientReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, v2}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 75
    new-instance v1, Lcom/amazon/ags/client/session/WhispersyncEnabledResponse;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/session/WhispersyncEnabledResponse;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 76
    iget-object v1, p0, Lcom/amazon/ags/client/session/SessionClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isWhispersyncEnabled called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/ags/client/session/SessionClient$2;

    const-string/jumbo v1, "Is Whispersync Enabled"

    invoke-direct {v0, p0, v1}, Lcom/amazon/ags/client/session/SessionClient$2;-><init>(Lcom/amazon/ags/client/session/SessionClient;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/amazon/ags/client/session/SessionClient$2;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public processSessionEvent(Lcom/amazon/ags/client/session/SessionEvent;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/client/session/SessionEvent;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/amazon/ags/client/session/SessionClient;->isClientReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, v2}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 103
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 104
    iget-object v1, p0, Lcom/amazon/ags/client/session/SessionClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processSessionEvent called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/ags/client/session/SessionClient$3;

    const-string/jumbo v1, "GameCircle.onResume"

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/ags/client/session/SessionClient$3;-><init>(Lcom/amazon/ags/client/session/SessionClient;Ljava/lang/String;Lcom/amazon/ags/client/session/SessionEvent;)V

    invoke-virtual {v0, v2}, Lcom/amazon/ags/client/session/SessionClient$3;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method
