.class Lcom/amazon/identity/auth/device/authorization/CallbackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_OUTSTANDING:I = 0xa

.field private static final browserCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/authorization/CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final lock:Ljava/lang/Object;


# instance fields
.field public final mClientId:Ljava/lang/String;

.field public final mDateCreated:Ljava/util/Date;

.field public final mRequestId:Ljava/lang/String;

.field public final mRequestedScopes:[Ljava/lang/String;

.field public final mlistener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->LOG_TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->lock:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->browserCallbacks:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mDateCreated:Ljava/util/Date;

    .line 31
    iput-object p3, p0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mClientId:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mRequestedScopes:[Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mRequestId:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mlistener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    .line 35
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->browserCallbacks:Ljava/util/Map;

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method static addCallbackInfo(Lcom/amazon/identity/auth/device/authorization/CallbackInfo;)V
    .locals 3

    .prologue
    .line 40
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->cleanUp()V

    .line 43
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->browserCallbacks:Ljava/util/Map;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mRequestId:Ljava/lang/String;

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    monitor-exit v1

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static cleanUp()V
    .locals 9

    .prologue
    .line 70
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->browserCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 72
    const-wide v6, 0x7fffffffffffffffL

    .line 73
    const/4 v2, 0x0

    .line 74
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->browserCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mDateCreated:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mDateCreated:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 79
    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;

    move-wide v2, v4

    :goto_1
    move-wide v6, v2

    move-object v2, v0

    .line 88
    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->browserCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mRequestId:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, v2

    move-wide v2, v6

    goto :goto_1

    .line 91
    :cond_2
    if-eqz v2, :cond_3

    .line 93
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing oldest request id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mRequestId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->browserCallbacks:Ljava/util/Map;

    iget-object v1, v2, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mRequestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_3
    return-void
.end method

.method static cleanUpAll()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->browserCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    return-void
.end method

.method static getCallbackInfo(Ljava/lang/String;)Lcom/amazon/identity/auth/device/authorization/CallbackInfo;
    .locals 4

    .prologue
    .line 49
    .line 50
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->browserCallbacks:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;

    .line 53
    if-eqz v0, :cond_0

    .line 55
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->browserCallbacks:Ljava/util/Map;

    iget-object v3, v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mRequestId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    monitor-exit v1

    .line 58
    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getCallbackInfoCount()I
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->browserCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Lcom/amazon/identity/auth/device/authorization/CallbackInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 106
    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mDateCreated:Ljava/util/Date;

    iget-object v2, p1, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mDateCreated:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mRequestId:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mRequestId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mClientId:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mClientId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mlistener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    iget-object v2, p1, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mlistener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
