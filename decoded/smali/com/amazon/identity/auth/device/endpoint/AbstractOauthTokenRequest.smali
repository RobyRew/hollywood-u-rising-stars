.class public abstract Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;
.super Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest;
.source "SourceFile"


# static fields
.field public static final API_PREFIX:Ljava/lang/String; = "api"

.field public static final API_PREFIX_DEVO:Ljava/lang/String; = "api.integ"

.field public static final API_PREFIX_PRE_PROD:Ljava/lang/String; = "api.pre-prod"

.field public static final APP_APP_ID_PARAM:Ljava/lang/String; = "app_id"

.field public static final APP_CLIENT_ID_PARAM:Ljava/lang/String; = "client_id"

.field public static final AUTHORIZATION_CODE_GRANT:Ljava/lang/String; = "authorization_code"

.field public static final AUTHORIZATION_CODE_PARAM:Ljava/lang/String; = "code"

.field public static final GRANT_TYPE_PARAM:Ljava/lang/String; = "grant_type"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final OAUTH_END_POINT:Ljava/lang/String; = "/auth/O2/token"

.field public static final REDIRECT_URI_PARAM:Ljava/lang/String; = "redirect_uri"

.field public static final REFRESH_TOKEN_GRANT:Ljava/lang/String; = "refresh_token"


# instance fields
.field private final mAppFamilyId:Ljava/lang/String;

.field protected final mClientId:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 55
    iput-object p4, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->mAppFamilyId:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->mContext:Landroid/content/Context;

    .line 57
    iput-object p6, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->mClientId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private getHostType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    const-string/jumbo v0, "www"

    .line 139
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 140
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 142
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "host.type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->LOG_TAG:Ljava/lang/String;

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

    .line 149
    :cond_0
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v1

    .line 147
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->LOG_TAG:Ljava/lang/String;

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
    .line 109
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->getHostType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string/jumbo v1, "development"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    sget-object v0, Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;->FORCE_DEVO:Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/utils/DefaultLibraryInfo;->setOverrideAppState(Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string/jumbo v1, "gamma"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;->FORCE_PRE_PROD:Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/utils/DefaultLibraryInfo;->setOverrideAppState(Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;)V

    goto :goto_0
.end method


# virtual methods
.method protected addRequestInfoParameters()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->postParameters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "grant_type"

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->getGrantType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->postParameters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "client_id"

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->mClientId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method protected getAppFamilyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->mAppFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, ".amazon.com"

    return-object v0
.end method

.method public getEndPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "/auth/O2/token"

    return-object v0
.end method

.method public abstract getGrantType()Ljava/lang/String;
.end method

.method public getHost(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    .line 85
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, " domain: .amazon.com"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->updateAppState()V

    .line 88
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest$1;->$SwitchMap$com$amazon$identity$auth$device$AccountManagerConstants$OVERIDE_APP_STATE:[I

    invoke-static {}, Lcom/amazon/identity/auth/device/utils/DefaultLibraryInfo;->getOverrideLibraryState()Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/AccountManagerConstants$OVERIDE_APP_STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
    const-string/jumbo v0, "api"

    .line 100
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->LOG_TAG:Ljava/lang/String;

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

    .line 102
    return-object v0

    .line 91
    :pswitch_0
    const-string/jumbo v0, "api.integ"

    goto :goto_0

    .line 94
    :pswitch_1
    const-string/jumbo v0, "api.pre-prod"

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
