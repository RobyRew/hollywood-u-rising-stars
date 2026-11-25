.class public Lcom/amazon/identity/auth/device/token/RefreshToken;
.super Lcom/amazon/identity/auth/device/token/AbstractToken;
.source "SourceFile"


# static fields
.field public static final DEFAULT_REGION_HINT:Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;

.field private static final KEY_DMS_DIRECTEDID:Ljava/lang/String; = "dms.directed.id"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final REGION_HINT_KEY:Ljava/lang/String; = "region_hint"

.field private static final UNIQUE_ID_KEY:Ljava/lang/String; = "unique_id"


# instance fields
.field private final regionHint:Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/amazon/identity/auth/device/token/RefreshToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/token/RefreshToken;->LOG_TAG:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;->NA:Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;

    sput-object v0, Lcom/amazon/identity/auth/device/token/RefreshToken;->DEFAULT_REGION_HINT:Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/token/RefreshToken;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/amazon/identity/auth/device/token/RefreshToken;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "RefreshToken default constructor with region hint"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/token/AbstractToken;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/RefreshToken;->tokenData:Ljava/util/Map;

    const-string/jumbo v1, "directedid"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    iput-object p2, p0, Lcom/amazon/identity/auth/device/token/RefreshToken;->regionHint:Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;

    .line 75
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/token/RefreshToken;->initTokenData()V

    .line 76
    sget-object v0, Lcom/amazon/identity/auth/device/token/RefreshToken;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating Token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/RefreshToken;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "directedId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/RefreshToken;->getDirectedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/RefreshToken;->tokenData:Ljava/util/Map;

    const-string/jumbo v1, "unique_id"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/amazon/identity/auth/device/token/RefreshToken;->DEFAULT_REGION_HINT:Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/amazon/identity/auth/device/token/RefreshToken;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/amazon/identity/auth/device/token/RefreshToken;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "RefreshToken default constructor called"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/amazon/identity/auth/device/token/RefreshToken;->DEFAULT_REGION_HINT:Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/identity/auth/device/token/RefreshToken;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/token/AbstractToken;-><init>(Ljava/util/Map;)V

    .line 92
    const-string/jumbo v0, "directedid"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/amazon/identity/auth/device/token/RefreshToken;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "No DirectedId available for RefreshToken"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v1, "No DirectedId available for RefreshToken"

    const/4 v2, 0x0

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_BAD_PARAM:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0

    .line 99
    :cond_0
    const-string/jumbo v0, "region_hint"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    if-nez v0, :cond_1

    .line 101
    sget-object v0, Lcom/amazon/identity/auth/device/token/RefreshToken;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "region_hint not found in token data when creating RefreshToken, setting to default (NA)"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/amazon/identity/auth/device/token/RefreshToken;->DEFAULT_REGION_HINT:Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/token/RefreshToken;->regionHint:Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;

    .line 103
    const-string/jumbo v0, "region_hint"

    sget-object v1, Lcom/amazon/identity/auth/device/token/RefreshToken;->DEFAULT_REGION_HINT:Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :goto_0
    sget-object v0, Lcom/amazon/identity/auth/device/token/RefreshToken;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating Token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/RefreshToken;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "directedId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/RefreshToken;->getDirectedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/RefreshToken;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 105
    :cond_1
    invoke-static {v0}, Lcom/amazon/identity/auth/device/token/AbstractToken;->convertStringToRegionHint(Ljava/lang/String;)Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/token/RefreshToken;->regionHint:Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;

    goto :goto_0
.end method

.method private initTokenData()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/RefreshToken;->tokenData:Ljava/util/Map;

    const-string/jumbo v1, "region_hint"

    iget-object v2, p0, Lcom/amazon/identity/auth/device/token/RefreshToken;->regionHint:Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method


# virtual methods
.method public getDMSDirectedId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/RefreshToken;->tokenData:Ljava/util/Map;

    const-string/jumbo v1, "dms.directed.id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDirectedId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/RefreshToken;->tokenData:Ljava/util/Map;

    const-string/jumbo v1, "directedid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRegionHint()Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/RefreshToken;->regionHint:Lcom/amazon/identity/auth/device/AccountManagerConstants$REGION_HINT;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string/jumbo v0, "com.amazon.identity.token.refreshToken"

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/RefreshToken;->tokenData:Ljava/util/Map;

    const-string/jumbo v1, "unique_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setDMSDirectedId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/RefreshToken;->tokenData:Ljava/util/Map;

    const-string/jumbo v1, "dms.directed.id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/token/RefreshToken;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
