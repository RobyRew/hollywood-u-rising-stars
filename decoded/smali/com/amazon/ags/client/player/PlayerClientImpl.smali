.class public Lcom/amazon/ags/client/player/PlayerClientImpl;
.super Lcom/amazon/ags/client/ClientBase;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/api/player/PlayerClient;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static signedInListener:Lcom/amazon/ags/api/player/AGSignedInListener;


# instance fields
.field private final globalState:Lcom/amazon/ags/html5/util/GlobalState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/player/PlayerClientImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/player/PlayerClientImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/html5/service/ServiceHelper;Lcom/amazon/ags/html5/util/GlobalState;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/ClientBase;-><init>(Lcom/amazon/ags/html5/service/ServiceHelper;)V

    .line 41
    iput-object p2, p0, Lcom/amazon/ags/client/player/PlayerClientImpl;->globalState:Lcom/amazon/ags/html5/util/GlobalState;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/html5/util/GlobalState;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/amazon/ags/client/ClientBase;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/ags/client/player/PlayerClientImpl;->globalState:Lcom/amazon/ags/html5/util/GlobalState;

    .line 37
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/amazon/ags/client/player/PlayerClientImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static notifySignedInListener(Z)V
    .locals 4

    .prologue
    .line 90
    sget-object v0, Lcom/amazon/ags/client/player/PlayerClientImpl;->signedInListener:Lcom/amazon/ags/api/player/AGSignedInListener;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/amazon/ags/client/player/PlayerClientImpl;->signedInListener:Lcom/amazon/ags/api/player/AGSignedInListener;

    invoke-interface {v0, p0}, Lcom/amazon/ags/api/player/AGSignedInListener;->onSignedInStateChange(Z)V

    .line 94
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amazon/ags/jni/AGSJniHandler;->isLibraryLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-static {p0}, Lcom/amazon/ags/jni/player/ProfilesJni;->callSignedInStateChangedListener(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    sget-object v1, Lcom/amazon/ags/client/player/PlayerClientImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in calling signed in listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public varargs getLocalPlayer([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/player/RequestPlayerResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/amazon/ags/client/player/PlayerClientImpl;->isClientReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 52
    new-instance v1, Lcom/amazon/ags/client/player/RequestPlayerResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/player/RequestPlayerResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 53
    sget-object v1, Lcom/amazon/ags/client/player/PlayerClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getLocalPlayer called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/ags/client/player/PlayerClientImpl$1;

    const-string/jumbo v1, "Get Local Player"

    invoke-direct {v0, p0, v1}, Lcom/amazon/ags/client/player/PlayerClientImpl$1;-><init>(Lcom/amazon/ags/client/player/PlayerClientImpl;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/amazon/ags/client/player/PlayerClientImpl$1;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazon/ags/client/player/PlayerClientImpl;->globalState:Lcom/amazon/ags/html5/util/GlobalState;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/util/GlobalState;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSignedInListener(Lcom/amazon/ags/api/player/AGSignedInListener;)V
    .locals 0

    .prologue
    .line 104
    sput-object p1, Lcom/amazon/ags/client/player/PlayerClientImpl;->signedInListener:Lcom/amazon/ags/api/player/AGSignedInListener;

    .line 105
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/ags/client/player/PlayerClientImpl;->isReady:Z

    .line 46
    return-void
.end method
