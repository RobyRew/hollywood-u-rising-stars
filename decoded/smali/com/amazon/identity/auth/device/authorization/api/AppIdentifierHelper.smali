.class public final Lcom/amazon/identity/auth/device/authorization/api/AppIdentifierHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;-><init>()V

    .line 51
    invoke-interface {v0, p0, p1}, Lcom/amazon/identity/auth/device/appid/AppIdentifier;->getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public static isAPIKeyValid(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;-><init>()V

    .line 34
    invoke-interface {v0, p0, p1}, Lcom/amazon/identity/auth/device/appid/AppIdentifier;->isAPIKeyValid(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
