.class public Lcom/amazon/ags/html5/javascript/NativeGlobalStateCallHandler;
.super Lcom/amazon/ags/html5/javascript/CallHandlerBase;
.source "SourceFile"


# static fields
.field private static final supportedCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final globalState:Lcom/amazon/ags/html5/util/GlobalState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "batchGetGlobalState"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "batchPutGlobalState"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/ags/html5/javascript/NativeGlobalStateCallHandler;->supportedCalls:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/amazon/ags/html5/util/GlobalState;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/amazon/ags/html5/javascript/NativeGlobalStateCallHandler;->supportedCalls:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/amazon/ags/html5/javascript/CallHandlerBase;-><init>(Landroid/os/Handler;Ljava/util/Set;)V

    .line 36
    iput-object p2, p0, Lcom/amazon/ags/html5/javascript/NativeGlobalStateCallHandler;->globalState:Lcom/amazon/ags/html5/util/GlobalState;

    .line 37
    return-void
.end method

.method private batchGetGlobalState(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/NativeGlobalStateCallHandler;->globalState:Lcom/amazon/ags/html5/util/GlobalState;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/util/GlobalState;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeGlobalStateCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private batchPutGlobalState(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 58
    :try_start_0
    const-string/jumbo v0, "parameters"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 63
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    :goto_1
    iget-object v4, p0, Lcom/amazon/ags/html5/javascript/NativeGlobalStateCallHandler;->globalState:Lcom/amazon/ags/html5/util/GlobalState;

    invoke-virtual {v4, v0, v1}, Lcom/amazon/ags/html5/util/GlobalState;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeGlobalStateCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to update global state from request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "REQUEST_ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeGlobalStateCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_2
    return-void

    .line 72
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 81
    :cond_1
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeGlobalStateCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected handleMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 41
    const-string/jumbo v1, "batchGetGlobalState"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeGlobalStateCallHandler;->batchGetGlobalState(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 49
    :goto_0
    return v0

    .line 44
    :cond_0
    const-string/jumbo v1, "batchPutGlobalState"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeGlobalStateCallHandler;->batchPutGlobalState(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
