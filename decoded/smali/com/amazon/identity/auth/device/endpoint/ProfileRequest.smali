.class public Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;
.super Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest;
.source "SourceFile"


# static fields
.field private static final API_PREFIX:Ljava/lang/String; = "api"

.field public static final API_PREFIX_DEVO:Ljava/lang/String; = "api.integ"

.field public static final API_PREFIX_PRE_PROD:Ljava/lang/String; = "api.pre-prod"

.field private static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field private static final BEARER_PREFIX:Ljava/lang/String; = "Bearer "

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PROFILE_ENDPOINT:Ljava/lang/String; = "/user/profile"


# instance fields
.field private mAuthzToken:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 38
    iput-object p5, p0, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->mAuthzToken:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private getHostType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    const-string/jumbo v0, "www"

    .line 132
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 133
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 135
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "host.type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Host Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " found in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v1

    .line 140
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No host type found in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAppState()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->getHostType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string/jumbo v1, "development"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    sget-object v0, Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;->FORCE_DEVO:Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/utils/DefaultLibraryInfo;->setOverrideAppState(Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string/jumbo v1, "gamma"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;->FORCE_PRE_PROD:Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/utils/DefaultLibraryInfo;->setOverrideAppState(Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;)V

    goto :goto_0
.end method


# virtual methods
.method protected addRequestInfoParameters()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method protected consumeRequestContent()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method protected generateTokenResponse(Lorg/apache/http/HttpResponse;)Lcom/amazon/identity/auth/device/endpoint/TokenResponse;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/ProfileResponse;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/endpoint/ProfileResponse;-><init>(Lorg/apache/http/HttpResponse;)V

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, ".amazon.com"

    return-object v0
.end method

.method public getEndPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "/user/profile"

    return-object v0
.end method

.method public getHost(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->updateAppState()V

    .line 79
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest$1;->$SwitchMap$com$amazon$identity$auth$device$AccountManagerConstants$OVERIDE_APP_STATE:[I

    invoke-static {}, Lcom/amazon/identity/auth/device/utils/DefaultLibraryInfo;->getOverrideLibraryState()Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 88
    const-string/jumbo v0, "api"

    .line 91
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "host for request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-object v0

    .line 82
    :pswitch_0
    const-string/jumbo v0, "api.integ"

    goto :goto_0

    .line 85
    :pswitch_1
    const-string/jumbo v0, "api.pre-prod"

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public initializeHeaders()V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest;->initializeHeaders()V

    .line 63
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->mAuthzToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 64
    return-void
.end method

.method protected updateEntity()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
