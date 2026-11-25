.class public Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;
.super Lcom/sponsorpay/mediation/SPMediationAdapter;
.source "SourceFile"


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String; = "AppLovin"

.field private static final ADAPTER_VERSION:Ljava/lang/String; = "6.1.4-r1"

.field private static final SDK_KEY:Ljava/lang/String; = "applovin.sdk.key"

.field public static final TAG:Ljava/lang/String; = "AppLovinAdapter"

.field private static final VERBOSE_LOGGING_KEY:Ljava/lang/String; = "verbose.logging"


# instance fields
.field private mInterstitialAdapter:Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;

.field private mVideoAdapter:Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sponsorpay/mediation/SPMediationAdapter;-><init>()V

    return-void
.end method

.method private getMetadata(Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 92
    .line 96
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 106
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getValueFromAppMetadata(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->getMetadata(Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "applovin.sdk.key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getVerboseLoggingFromConfig()Z
    .locals 4

    .prologue
    .line 87
    const-string/jumbo v0, "AppLovin"

    const-string/jumbo v1, "verbose.logging"

    const/4 v2, 0x0

    .line 88
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    .line 87
    invoke-static {v0, v1, v2, v3}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getInterstitialMediationAdapter()Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->mInterstitialAdapter:Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;

    return-object v0
.end method

.method public bridge synthetic getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/b/a;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->getInterstitialMediationAdapter()Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "AppLovin"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "6.1.4-r1"

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->mVideoAdapter:Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;

    return-object v0
.end method

.method public bridge synthetic getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/a;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->getVideoMediationAdapter()Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public startAdapter(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    .line 40
    const-string/jumbo v0, "AppLovinAdapter"

    const-string/jumbo v1, "Starting AppLovin adapter..."

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->getValueFromAppMetadata(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-direct {p0}, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->getVerboseLoggingFromConfig()Z

    move-result v1

    .line 43
    invoke-static {v0}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/applovin/c/o;

    invoke-direct {v0}, Lcom/applovin/c/o;-><init>()V

    .line 45
    invoke-virtual {v0, v1}, Lcom/applovin/c/o;->a(Z)V

    .line 47
    const-string/jumbo v1, "AppLovinAdapter"

    const-string/jumbo v2, "AppLovinSdk.initializeSdk(activity);"

    invoke-static {v1, v2}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Lcom/applovin/c/n;->a(Landroid/content/Context;)V

    .line 49
    invoke-static {v0, p1}, Lcom/applovin/c/n;->a(Lcom/applovin/c/o;Landroid/content/Context;)Lcom/applovin/c/n;

    .line 50
    new-instance v0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;

    invoke-direct {v0, p0, p1}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;-><init>(Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->mInterstitialAdapter:Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;

    .line 52
    new-instance v0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;

    invoke-direct {v0, p0, p1}, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;-><init>(Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->mVideoAdapter:Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;

    .line 53
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    .line 55
    :cond_0
    const-string/jumbo v0, "AppLovinAdapter"

    const-string/jumbo v1, "SDK key value is not set in the AndroidManifest file of your application. Adapter won\'t start"

    .line 56
    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    goto :goto_0
.end method
